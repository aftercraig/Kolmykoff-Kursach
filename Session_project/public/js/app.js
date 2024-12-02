document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("session-form");
    const examList = document.getElementById("exam-list");

    // Получение экзаменов
    const loadExams = async () => {
        const response = await fetch("/api/exams");
        const exams = await response.json();
        examList.innerHTML = "";
        exams.forEach(exam => {
            const li = document.createElement("li");
            li.textContent = `${exam.subject} - ${exam.date} в ${exam.time}`;

            const gradeSpan = document.createElement("span");
            gradeSpan.className = "grade";
            gradeSpan.textContent = exam.grade ? `Оценка: ${exam.grade}` : "Оценка не установлена";

            const editLink = document.createElement("span");
            editLink.className = "grade-edit";
            editLink.textContent = "Изменить оценку";
            editLink.addEventListener("click", () => editGrade(exam.id, exam.grade));

            li.appendChild(gradeSpan);
            li.appendChild(editLink);
            examList.appendChild(li);
        });
    };

    // Добавление экзамена
    form.addEventListener("submit", async (event) => {
        event.preventDefault();
        const subject = form.subject.value;
        const date = form.date.value;
        const time = form.time.value;

        const response = await fetch("/api/exams", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({ subject, date, time })
        });

        if (response.ok) {
            form.reset();
            loadExams();
        }
    });

    // Редактирование оценки
    const editGrade = async (id, currentGrade) => {
        const newGrade = prompt("Введите новую оценку:", currentGrade || "");
        if (newGrade !== null) {
            const response = await fetch(`/api/exams/${id}`, {
                method: "PUT",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({ grade: newGrade })
            });

            if (response.ok) {
                loadExams();
            }
        }
    };

    loadExams();
});