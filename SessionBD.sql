<?xml version="1.0" encoding="System"?>
<database>
    <name>session</name>
    <table>
        <database></database>
        <name>Disciplina</name>
        <ddl>CREATE TABLE `Disciplina` (
        	`id` integer primary key NOT NULL UNIQUE,
        	`Nazvaniye` TEXT NOT NULL
        )</ddl>
        <columns>
            <column>
                <name>id</name>
                <type>integer</type>
                <constraints>
                    <constraint>
                        <type>PRIMARY KEY</type>
                        <definition>primary key </definition>
                    </constraint>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL </definition>
                    </constraint>
                    <constraint>
                        <type>UNIQUE</type>
                        <definition>UNIQUE</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Nazvaniye</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL
                        </definition>
                    </constraint>
                </constraints>
            </column>
        </columns>
        <rows>
        </rows>
    </table>
    <table>
        <database></database>
        <name>Prepodavatel</name>
        <ddl>CREATE TABLE `Prepodavatel` (
        	`id` integer primary key NOT NULL UNIQUE,
        	`Familia` TEXT NOT NULL,
        	`Imya` TEXT NOT NULL,
        	`Otchestvo` TEXT NOT NULL,
        	`Kafedra` TEXT NOT NULL,
        	`Phone` INTEGER NOT NULL UNIQUE
        )</ddl>
        <columns>
            <column>
                <name>id</name>
                <type>integer</type>
                <constraints>
                    <constraint>
                        <type>PRIMARY KEY</type>
                        <definition>primary key </definition>
                    </constraint>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL </definition>
                    </constraint>
                    <constraint>
                        <type>UNIQUE</type>
                        <definition>UNIQUE</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Familia</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Imya</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Otchestvo</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Kafedra</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Phone</name>
                <type>INTEGER</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL </definition>
                    </constraint>
                    <constraint>
                        <type>UNIQUE</type>
                        <definition>UNIQUE
                        </definition>
                    </constraint>
                </constraints>
            </column>
        </columns>
        <rows>
        </rows>
    </table>
    <table>
        <database></database>
        <name>Student</name>
        <ddl>CREATE TABLE `Student` (
        	`id` integer primary key NOT NULL UNIQUE,
        	`Familia` TEXT NOT NULL,
        	`Imya` TEXT NOT NULL,
        	`Otchestvo` TEXT NOT NULL,
        	`Gruppa` TEXT NOT NULL
        )</ddl>
        <columns>
            <column>
                <name>id</name>
                <type>integer</type>
                <constraints>
                    <constraint>
                        <type>PRIMARY KEY</type>
                        <definition>primary key </definition>
                    </constraint>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL </definition>
                    </constraint>
                    <constraint>
                        <type>UNIQUE</type>
                        <definition>UNIQUE</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Familia</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Imya</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Otchestvo</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Gruppa</name>
                <type>TEXT</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL
                        </definition>
                    </constraint>
                </constraints>
            </column>
        </columns>
        <rows>
        </rows>
    </table>
    <table>
        <database></database>
        <name>Uchebniy_plan</name>
        <ddl>CREATE TABLE `Uchebniy_plan` (
        	`id` integer primary key NOT NULL UNIQUE,
        	`id_disciplina` integer NOT NULL UNIQUE,
        	`id_prepodavatel` integer NOT NULL UNIQUE,
        	`Semestr` INTEGER NOT NULL,
        	`Kolichestvo_chasov` INTEGER NOT NULL,
        FOREIGN KEY(`id_disciplina`) REFERENCES `Disciplina`(`id`),
        FOREIGN KEY(`id_prepodavatel`) REFERENCES `Prepodavatel`(`id`)
        )</ddl>
        <columns>
            <column>
                <name>id</name>
                <type>integer</type>
                <constraints>
                    <constraint>
                        <type>PRIMARY KEY</type>
                        <definition>primary key </definition>
                    </constraint>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL </definition>
                    </constraint>
                    <constraint>
                        <type>UNIQUE</type>
                        <definition>UNIQUE</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>id_disciplina</name>
                <type>integer</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL </definition>
                    </constraint>
                    <constraint>
                        <type>UNIQUE</type>
                        <definition>UNIQUE</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>id_prepodavatel</name>
                <type>integer</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL </definition>
                    </constraint>
                    <constraint>
                        <type>UNIQUE</type>
                        <definition>UNIQUE</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Semestr</name>
                <type>INTEGER</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Kolichestvo_chasov</name>
                <type>INTEGER</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
        </columns>
        <constraints>
            <constraint>
                <type>FOREIGN KEY</type>
                <definition>FOREIGN KEY(`id_disciplina`) REFERENCES `Disciplina`(`id`)</definition>
            </constraint>
            <constraint>
                <type>FOREIGN KEY</type>
                <definition>FOREIGN KEY(`id_prepodavatel`) REFERENCES `Prepodavatel`(`id`)
                </definition>
            </constraint>
        </constraints>
        <rows>
        </rows>
    </table>
    <table>
        <database></database>
        <name>Vedomost</name>
        <ddl>CREATE TABLE `Vedomost` (
        	`id_student` integer NOT NULL UNIQUE,
        	`id_plan` integer NOT NULL UNIQUE,
        	`Ocenka` INTEGER NOT NULL,
        	`Data` REAL NOT NULL,
        FOREIGN KEY(`id_student`) REFERENCES `Student`(`id`),
        FOREIGN KEY(`id_plan`) REFERENCES `Uchebniy_plan`(`id`)
        )</ddl>
        <columns>
            <column>
                <name>id_student</name>
                <type>integer</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL </definition>
                    </constraint>
                    <constraint>
                        <type>UNIQUE</type>
                        <definition>UNIQUE</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>id_plan</name>
                <type>integer</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL </definition>
                    </constraint>
                    <constraint>
                        <type>UNIQUE</type>
                        <definition>UNIQUE</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Ocenka</name>
                <type>INTEGER</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
            <column>
                <name>Data</name>
                <type>REAL</type>
                <constraints>
                    <constraint>
                        <type>NOT NULL</type>
                        <definition>NOT NULL</definition>
                    </constraint>
                </constraints>
            </column>
        </columns>
        <constraints>
            <constraint>
                <type>FOREIGN KEY</type>
                <definition>FOREIGN KEY(`id_student`) REFERENCES `Student`(`id`)</definition>
            </constraint>
            <constraint>
                <type>FOREIGN KEY</type>
                <definition>FOREIGN KEY(`id_plan`) REFERENCES `Uchebniy_plan`(`id`)
                </definition>
            </constraint>
        </constraints>
        <rows>
        </rows>
    </table>
</database>
