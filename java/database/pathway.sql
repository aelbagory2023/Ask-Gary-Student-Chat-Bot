START TRANSACTION;
DROP TABLE IF EXISTS pathway;

CREATE TABLE pathway(
    entry_id serial NOT NULL,
    title VARCHAR(200) NOT NULL,
    description VARCHAR(1000),
    keywords VARCHAR(300),
    link VARCHAR(500)
);
COMMIT;

INSERT INTO pathway(title, description, keywords, link) VALUES
(
'Managing Stress And Imposter Syndrome', 

'In the intense environment of a coding bootcamp, managing stress is essential. Establish a consistent schedule, include breaks, and affirm your purpose for learning. Avoid comparisons with others, prioritize physical activity, stay hydrated, and celebrate your achievements. These simple habits promote overall mental health and resilience during the challenging bootcamp experience.',

'imposter | stress | mental health | goals | managing stress | imposter syndrome',
 
'https://lms.techelevator.com/cohorts/542/blocks/29/content_files/05_Managing_Stress_and_Imposter_Syndrome/01-stress-intro.md'
),
(
'Time Management',

'At any point in time during the cohort you are sure to be managing several different things at once: the coding bootcamp (which includes your technical education and your Pathway curriculum), your family and friends, a job or side hustle, and/or lifes general commitments. Thus, it is crucially important during the cohort that you practice productive time management techniques. Techniques such as Pomodoro technique are good methods for managing time during your cohort.',

'time | pomodoro | burnout | calendar | exhaustion | cynicism | inefficacy | management | time management',

'https://lms.techelevator.com/cohorts/542/blocks/29/content_files/07_Time_Management/03-burnout-prevention.md | 
https://www.healthline.com/health/tips-for-identifying-and-preventing-burnout | 
https://www.workplacestrategiesformentalhealth.com/resources/prevent-burnout |
https://hbr.org/2016/11/beating-burnout'


),
(
'Elevator Pitch',

'Your Elevator Pitch will serve as your first impression when meeting new people - both professionally and personally. First impressions are formed within the first 7 to 17 seconds of meeting someone, which is why having a well-crafted elevator pitch will be a vital part of your job search. Elevator pitches should: Be short and sweet, showcase your personality, be clear and engaging, and also contain good non-verbal cues',

'elevator pitch | interview | introduction | meeting | job ',

'https://lms.techelevator.com/cohorts/542/blocks/29/content_files/03_Elevator_Pitch/01-elevator-pitch.md | 
https://drive.google.com/file/d/1w5K9SXOBLVG2KUu8AnupknA7r2B17Yam/preview'

),
(
'Resumes',

'Your resume will serve as your first impression when applying to jobs and we want to ensure that you are putting your best foot forward with your resume as you begin applying to jobs in the technology industry. It usually takes a few drafts to perfect your resume. Resumes should contain the following sections: Name/Contact Info, Professional Summary, Technical Skills, Technical Experience, Professional Experience, and Education',

'resume | resumes | skills | experience | education | job search | application | job',

'https://lms.techelevator.com/cohorts/542/blocks/30/content_files/01_Resumes/01-intro.md | 
https://www.hiration.com/ '
),
(
'Cover Letters',

'For many technology roles, cover letters will be an optional addition to your application. Thus, it is recommended that you skip the addition of a cover letter unless the following 2 situations arise: It is a job you REALLY want, such as your dream job OR You have valuable information to share that is not already included within your resume. A one-page cover letter comprises key elements, starting with your contact information, date, and optionally the employers details. Introduce yourself in the first paragraph, stating your name, the company, the job title, and expressing why you are a suitable candidate. The body paragraphs (2-3) should directly align with the job description, emphasizing how your experiences, skills, and achievements meet the companys needs. Avoid repeating resume details and focus on relevant contributions. Conclude with a call-to-action paragraph, restating interest, providing contact information, and expressing gratitude.',

'cover letter | resume | application | job',

'https://lms.techelevator.com/cohorts/542/blocks/30/content_files/11_Cover_Letters/01-introduction.md |
https://www.thebalancemoney.com/sample-career-change-cover-letter-2060185'
),
(
'LinkedIn',

'Not only is LinkedIn a critical tool in your job search, but it will also become a major tool in managing your career after Tech Elevator. Social media has become integral to daily life. Platforms like Facebook, Instagram, and TikTok dominate personal interactions. In contrast, LinkedIn is a dedicated space for professional engagement. Functioning as an online resume, LinkedIn offers networking opportunities, job searches, experience sharing, and serves as a research tool for interviews. It plays a crucial role in managing and advancing ones professional life, distinguishing itself from other platforms focused on personal connections and content sharing.'

'LinkedIn | resume | job | job search | networking | research ',

'https://lms.techelevator.com/cohorts/542/blocks/30/content_files/02_LinkedIn/05-introduction.md |
 https://drive.google.com/file/d/1YJrci4XICJ_MIRX6vwkMkAIIGl2lekvS/preview'

),
(
'Technical Roles',

'As you explore potential technology career paths, you will discover a myriad of options. Our compiled list of common technology roles aims to provide clarity on post-graduation opportunities and familiarize you with the diverse positions you may encounter in your technology career. 
Application Programmer/Developer: Write programs to handle a specific job, such as a program to track inventory within an organization. |
Project Manager: Project Managers have the responsibility of the planning and execution of a project. |
QA Automation Engineer: QA Automation Engineers design, program, simulate and test automated machinery and processes in order to complete exact tasks. |
IT Support Analyst: The IT Support Analyst  will provide front-line primary technical support to end users on various technical issues and problems relating to hardware, software, and peripherals.',

'technical role | job | title | position',

'https://lms.techelevator.com/cohorts/542/blocks/30/content_files/12_Technical_Roles/01-technical-roles.md |
https://en.wikipedia.org/wiki/Programmer#Application_versus_system_programming |
https://en.wikipedia.org/wiki/Project_manager#Software_Project_Manager |
https://yojji.io/blog/qa-automation-engineer |
https://www.goconstruct.org/construction-careers/what-jobs-are-right-for-me/it-support-analyst/#:~:text=As%20an%20IT%20support%20analyst%20you%20will%20be%20responsible%20for,new%20systems%20or%20moving%20networks.'
);