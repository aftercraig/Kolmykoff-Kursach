document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("session-form");
    const examList = document.getElementById("exam-list");

    const loadExams = async () => {
        const response = await fetch("/api/exams");
        const exams = await response.json();
        examList.innerHTML = "";
        exams.forEach(exam => {
            const li = document.createElement("li");
            li.textContent = `${exam.subject} - ${exam.date} в ${exam.time}`;
            examList.appendChild(li);
        });
    };

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

    loadExams();
});