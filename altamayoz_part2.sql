-- ============================================================
-- مشروع قاعدة البيانات - الجزء الثاني
-- مدرسة التميز للتعليم الثانوي
-- ============================================================

-- إنشاء قاعدة البيانات واستخدامها
CREATE DATABASE IF NOT EXISTS AlTamayozSchool2;
USE AlTamayozSchool2;

-- ============================================================
-- إنشاء جدول الطلاب الرئيسي
-- (المعدل التراكمي من 0 إلى 100، الجنس M أو F)
-- ============================================================

CREATE TABLE IF NOT EXISTS Students (
    student_id      INT AUTO_INCREMENT PRIMARY KEY, -- الرقم التسلسلي
    student_name    VARCHAR(100) NOT NULL,           -- اسم الطالب
    birth_date      DATE NOT NULL,                   -- تاريخ الميلاد
    gender          CHAR(1) NOT NULL,                -- الجنس: M أو F
    enrollment_date DATE NOT NULL,                   -- تاريخ الالتحاق
    email           VARCHAR(150) UNIQUE,             -- البريد الإلكتروني
    grade_level     INT NOT NULL,                    -- المستوى الدراسي (1-6)
    track           VARCHAR(50) NOT NULL,            -- المسار الدراسي
    gpa             DECIMAL(5,2)                     -- المعدل التراكمي من 100
);

-- ============================================================
-- إدخال بيانات 30 طالب
-- ============================================================

INSERT INTO Students (student_name, birth_date, gender, enrollment_date, email, grade_level, track, gpa) VALUES
('Ahmed Al-Omari',      '2007-03-15', 'M', '2022-09-01', 'ahmed.omari@school.sa',      3, 'Science',    95.00),
('Sara Al-Shamri',      '2008-06-22', 'F', '2023-09-01', 'sara.shamri@school.sa',       2, 'Arts',       82.50),
('Omar Al-Zahrani',     '2007-11-08', 'M', '2022-09-01', 'omar.zahrani@school.sa',      3, 'Science',    55.00),
('Noura Al-Qahtani',    '2008-01-30', 'F', '2023-09-01', 'noura.qahtani@school.sa',     2, 'Science',    91.00),
('Yousef Al-Dosari',    '2007-07-19', 'M', '2022-09-01', 'yousef.dosari@school.sa',     3, 'Arts',       72.00),
('Reem Al-Ghamdi',      '2009-02-14', 'F', '2024-09-01', 'reem.ghamdi@school.sa',       1, 'Science',    88.00),
('Faisal Al-Otaibi',    '2007-09-05', 'M', '2022-09-01', 'faisal.otaibi@school.sa',     3, 'Science',    97.00),
('Lama Al-Harbi',       '2008-12-25', 'F', '2023-09-01', 'lama.harbi@school.sa',        2, 'Arts',       45.00),
('Turki Al-Mutairi',    '2009-04-11', 'M', '2024-09-01', 'turki.mutairi@school.sa',     1, 'Science',    50.00),
('Hind Al-Rashidi',     '2008-08-03', 'F', '2023-09-01', 'hind.rashidi@school.sa',      2, 'Science',    93.00),
('Badr Al-Subaie',      '2007-05-27', 'M', '2022-09-01', 'badr.subaie@school.sa',       3, 'Science',    86.00),
('Dana Al-Buqami',      '2009-10-18', 'F', '2024-09-01', 'dana.buqami@school.sa',       1, 'Arts',       78.00),
('Majed Al-Juhani',     '2008-03-09', 'M', '2023-09-01', 'majed.juhani@school.sa',      2, 'Science',    40.00),
('Abrar Al-Asmari',     '2007-06-14', 'F', '2022-09-01', 'abrar.asmari@school.sa',      3, 'Arts',       96.00),
('Sultan Al-Anazi',     '2009-01-22', 'M', '2024-09-01', 'sultan.anazi@school.sa',      1, 'Science',    65.00),
('Wejdan Al-Shahri',    '2008-07-31', 'F', '2023-09-01', 'wejdan.shahri@school.sa',     2, 'Science',    99.00),
('Abdullah Al-Hamdan',  '2007-04-06', 'M', '2022-09-01', 'abdullah.hamdan@school.sa',   3, 'Arts',       58.00),
('Mona Al-Ruwaili',     '2009-11-17', 'F', '2024-09-01', 'mona.ruwaili@school.sa',      1, 'Arts',       74.00),
('Hamza Al-Saedi',      '2008-02-28', 'M', '2023-09-01', 'hamza.saedi@school.sa',       2, 'Science',    83.00),
('Areej Al-Lihyani',    '2007-08-13', 'F', '2022-09-01', 'areej.lihyani@school.sa',     3, 'Science',    92.00),
('Karim Al-Thubaiti',   '2009-05-02', 'M', '2024-09-01', 'karim.thubaiti@school.sa',    1, 'Science',    35.00),
('Shaimaa Al-Zahrani',  '2008-09-20', 'F', '2023-09-01', 'shaimaa.zahrani@school.sa',   2, 'Arts',       87.00),
('Ziyad Al-Hajri',      '2007-12-01', 'M', '2022-09-01', 'ziyad.hajri@school.sa',       3, 'Science',    76.00),
('Rania Al-Mulla',      '2009-06-16', 'F', '2024-09-01', 'rania.mulla@school.sa',       1, 'Science',    81.00),
('Meshal Al-Shamrani',  '2008-04-24', 'M', '2023-09-01', 'meshal.shamrani@school.sa',   2, 'Arts',       63.00),
('Abeer Al-Jabri',      '2007-10-07', 'F', '2022-09-01', 'abeer.jabri@school.sa',       3, 'Science',    94.00),
('Waleed Al-Qurashi',   '2009-03-29', 'M', '2024-09-01', 'waleed.qurashi@school.sa',    1, 'Arts',       52.00),
('Jawaher Al-Saqri',    '2008-11-10', 'F', '2023-09-01', 'jawaher.saqri@school.sa',     2, 'Science',    89.00),
('Adam Al-Arifi',       '2004-02-18', 'M', '2019-09-01', 'adam.arifi@school.sa',        6, 'Science',   100.00),
('Nujood Al-Zaidi',     '2009-08-05', 'F', '2024-09-01', 'nujood.zaidi@school.sa',      1, 'Arts',       98.00);

-- ============================================================
-- إنشاء جدول المواد
-- ============================================================

CREATE TABLE IF NOT EXISTS Subjects (
    subject_id   INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL
);

INSERT INTO Subjects (subject_name) VALUES
('Mathematics'),
('Physics'),
('Arabic Language'),
('English Language'),
('Biology'),
('Chemistry');

-- ============================================================
-- 1) إنشاء جدول الطلاب المتفوقين (GPA > 90)
-- ============================================================

-- إنشاء الجدول بنفس هيكل Students وملئه بالطلاب ذوي المعدل أعلى من 90
CREATE TABLE IF NOT EXISTS TopStudents AS
    SELECT * FROM Students WHERE gpa > 90;

-- عرض الجدول المنشأ
SELECT * FROM TopStudents;

-- ============================================================
-- 2) إنشاء جدول الطلاب الغير مجتازين (GPA < 60)
-- ============================================================

CREATE TABLE IF NOT EXISTS FailedStudents AS
    SELECT * FROM Students WHERE gpa < 60;

-- عرض الجدول المنشأ
SELECT * FROM FailedStudents;

-- ============================================================
-- 3) عرض أسماء الطلاب التي تبدأ بحرف A
-- ============================================================

SELECT student_name AS "اسم الطالب"
FROM Students
WHERE student_name LIKE 'A%'; -- LIKE 'A%' تعني: يبدأ الاسم بحرف A

-- ============================================================
-- 4) عرض أسماء الطلاب الذين تتكون أسماؤهم من أربع خانات
-- ============================================================

-- علامة (_) تمثل خانة واحدة بالضبط
SELECT student_name AS "اسم الطالب (4 خانات)"
FROM Students
WHERE student_name LIKE '____'; -- أربع شرطات سفلية = أربع أحرف بالضبط

-- ============================================================
-- 5) Aggregate Functions على المعدل التراكمي
-- ============================================================

SELECT
    AVG(gpa) AS "متوسط المعدل التراكمي",   -- المتوسط الحسابي
    MAX(gpa) AS "أعلى معدل تراكمي",         -- الحد الأقصى
    MIN(gpa) AS "أدنى معدل تراكمي"          -- الحد الأدنى
FROM Students;

-- ============================================================
-- 6) الطلاب المتفوقون في المستوى السادس بمعدل 100
-- ============================================================

SELECT student_name AS "الطالب المتفوق", grade_level AS "المستوى", gpa AS "المعدل"
FROM Students
WHERE grade_level = 6        -- المستوى السادس
  AND gpa = 100;             -- المعدل 100 بالضبط

-- ============================================================
-- 7) طلاب المستوى الأول الذين أعمارهم بين 15 و16 سنة
-- ============================================================

SELECT
    student_name AS "اسم الطالب",
    birth_date   AS "تاريخ الميلاد",
    TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS "العمر" -- حساب العمر من تاريخ الميلاد
FROM Students
WHERE grade_level = 1
  AND TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) BETWEEN 15 AND 16;

-- ============================================================
-- 8) عدد الطلاب في المستوى الثاني
-- ============================================================

SELECT COUNT(*) AS "عدد طلاب المستوى الثاني"
FROM Students
WHERE grade_level = 2; -- تصفية المستوى الثاني فقط

-- ============================================================
-- 9) عرض مسارات الطلاب بدون تكرار
-- ============================================================

SELECT DISTINCT track AS "المسار الدراسي"
FROM Students; -- DISTINCT تزيل التكرار

-- ============================================================
-- 10) عرض أسماء المواد بأحرف كبيرة (UPPER)
-- ============================================================

SELECT UPPER(subject_name) AS "اسم المادة (أحرف كبيرة)"
FROM Subjects; -- UPPER() تحوّل النص إلى أحرف كبيرة

-- ============================================================
-- 11) المتوسط الحسابي للمعدل مقرباً لأقرب أصغر عدد (FLOOR)
-- ============================================================

SELECT FLOOR(AVG(gpa)) AS "متوسط المعدل (تقريب للأسفل)"
FROM Students; -- FLOOR() تقرّب الرقم للأسفل دائماً

-- ============================================================
-- 12) تبديل قيم الجنس: F → Female ، M → Male
-- (باستخدام REPLACE - string function)
-- ============================================================

-- قبل التعديل
SELECT student_name, gender AS "الجنس قبل التعديل" FROM Students LIMIT 5;

-- تحديث F إلى Female
UPDATE Students
SET gender = REPLACE(gender, 'F', 'Female')
WHERE gender = 'F';

-- تحديث M إلى Male
UPDATE Students
SET gender = REPLACE(gender, 'M', 'Male')
WHERE gender = 'M';

-- بعد التعديل
SELECT student_name, gender AS "الجنس بعد التعديل" FROM Students LIMIT 5;

-- ============================================================
-- 13) تحديث المعدل التراكمي للطلاب أقل من 60 بزيادة 5 درجات
-- ============================================================

-- عرض الطلاب قبل التحديث
SELECT student_name, gpa AS "المعدل قبل الزيادة"
FROM Students
WHERE gpa < 60;

-- إضافة 5 درجات على معدل الطلاب الأقل من 60
UPDATE Students
SET gpa = gpa + 5
WHERE gpa < 60;

-- عرض الطلاب بعد التحديث
SELECT student_name, gpa AS "المعدل بعد الزيادة"
FROM Students
WHERE gpa < 65; -- الحد الأعلى بعد الزيادة هو 65 (60 + 5)

-- ============================================================
-- نهاية الجزء الثاني - مدرسة التميز للتعليم الثانوي
-- ============================================================
