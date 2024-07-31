import re

class BrightspaceHelpdesk:
    def __init__(self):
        self.resources = {
            "prepare for brightspace": "https://www.brightspacehelp.usc.edu/instructors/prepare-for-brightspace/",
            "prepare students": "https://www.brightspacehelp.usc.edu/instructors/prepare-your-students-for-brightspace/",
            "get course": "https://www.brightspacehelp.usc.edu/getting-a-brightspace-course/",
            "organize materials": "https://www.brightspacehelp.usc.edu/instructors/organize-your-courses-materials-via-modules-and-sub-modules/",
            "copy content": "https://www.brightspacehelp.usc.edu/copying-course-content/",
            "add people": "https://www.brightspacehelp.usc.edu/instructors/adding-people-to-your-course/",
            "zoom meetings": "https://www.brightspacehelp.usc.edu/instructors/why-arent-my-zoom-class-meetings-in-brightspace/",
            "merge courses": "https://www.brightspacehelp.usc.edu/merging-courses-faculty-only/",
Prepare for Brightspace https://www.brightspacehelp.usc.edu/instructors/prepare-for-brightspace/
Prepare Your Students for Brightspace https://www.brightspacehelp.usc.edu/instructors/prepare-your-students-for-brightspace/
Getting a Brightspace Course https://www.brightspacehelp.usc.edu/getting-a-brightspace-course/
Organize Your Course Materials via Modules and Sub-modules https://www.brightspacehelp.usc.edu/instructors/organize-your-courses-materials-via-modules-and-sub-modules/
Copying Course Content https://www.brightspacehelp.usc.edu/copying-course-content/
Adding People to Your Course https://www.brightspacehelp.usc.edu/instructors/adding-people-to-your-course/
Why aren’t my Zoom class meetings in Brightspace? https://www.brightspacehelp.usc.edu/instructors/why-arent-my-zoom-class-meetings-in-brightspace/
Merging Courses https://www.brightspacehelp.usc.edu/merging-courses-faculty-only/
Evaluate assignments using the Assignments tool https://community.d2l.com/brightspace/kb/articles/3529-evaluate-assignments-using-the-assignments-tool
Enter grades in the Grades tool https://community.d2l.com/brightspace/kb/articles/3548-enter-grades-in-the-grades-tools
Course Evaluations https://www.brightspacehelp.usc.edu/instructors/course-evaluations/
Create an assignment https://community.d2l.com/brightspace/kb/articles/3608-create-an-assignment
Navigate Brightspace and find your course https://community.d2l.com/brightspace/kb/articles/5451-navigate-brightspace-and-find-your-course
Create an Announcement https://www.youtube.com/watch?v=-JlI6OdzwL0
Create a Discussion topic and Forum https://www.youtube.com/watch?v=4Jw6GwPQN8M&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=41
Grades Tool – Manage Grades https://www.youtube.com/watch?v=_Uw-b-CyEPk&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=22
Grades Tool – Setup Wizard https://www.youtube.com/watch?v=Pl4U3rcbPOM&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=18
Manage Account Settings https://www.youtube.com/watch?v=sCcHZlC-b1o&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=23
Adding the Work to Do Widget To Your Homepage https://www.youtube.com/watch?v=cgw9pi6wUcY&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=24
Class Progress Overview https://www.youtube.com/watch?v=oybFY7yPabE&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=26
Classlist Overview https://www.youtube.com/watch?v=4lh69B9Qsbo&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=27
Media Library Overview https://www.youtube.com/watch?v=D8fWOekyD_Q&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=28
Use Discussions for Journaling https://www.youtube.com/watch?v=PZlq9cMtDag&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=32
Create a Randomized Set of Quiz Questions https://www.youtube.com/watch?v=SsgnoSMSIqI&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=37
Using the Brightspace (HTML) Editor https://www.youtube.com/watch?v=BEYL4Z1fgJs&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=43
Evaluate discussions https://www.youtube.com/watch?v=Rc_No_-zbYA&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=47
Browser support https://community.d2l.com/brightspace/kb/articles/5663-browser-support#supported-browsersz
Sending Email https://www.brightspacehelp.usc.edu/instructors/sending-email/
Turnitin: Assignment Integration, Student Submission, and Grading https://www.brightspacehelp.usc.edu/instructors/turnitin-assignment-integration-student-submission-and-grading/
About Manage Files https://community.d2l.com/brightspace/kb/articles/3328-about-manage-files
Viewing Turnitin Originality Reports https://www.brightspacehelp.usc.edu/viewing-turnitin-originality-reports/
Grading, Rubrics, and Providing Feedback for a Turnitin Assignment https://www.brightspacehelp.usc.edu/rubrics-grading-and-providing-feedback-for-a-turnitin-assignment/
Create and configure a quiz https://community.d2l.com/brightspace/kb/articles/3413-create-and-configure-a-quiz
Course Notifications https://www.brightspacehelp.usc.edu/communicating-with-students/sending-notifications/
Set up Library Course Reserves (ARES): https://www.brightspacehelp.usc.edu/files/2023/12/Instructor-ARES_-LTI-HELP-GUIDE.pdf
Pin a course https://bswrittentutorials.s3.us-west-1.amazonaws.com/Pin+a+Course.pdf
make the course active, available for students: https://community.d2l.com/brightspace/kb/articles/22383-activate-your-course#make-your-course-available-and-active
Upload and record video with the Media Library https://bswrittentutorials.s3.us-west-1.amazonaws.com/Record+and+Post+a+Video+or+Audio+Lecture.pdf
set up Zoom meetings https://bswrittentutorials.s3.us-west-1.amazonaws.com/Set+Up+Zoom+Meetings.pdf
welcome email to students: https://bswrittentutorials.s3.us-west-1.amazonaws.com/Welcome-to-Brightspace-Email-to-Students.docx
welcome email to TA: https://bswrittentutorials.s3.us-west-1.amazonaws.com/TA-Welcome-To-Brightspace-Email.docx
bookable meetings: https://bswrittentutorials.s3.us-west-1.amazonaws.com/Set+up+Bookable+Appointments.pdf
create short video or audio note: https://bswrittentutorials.s3.us-west-1.amazonaws.com/Record+and+Post+a+Short+Video+or+Audio+Note.pdf
USC syllabus template: https://bswrittentutorials.s3.us-west-1.amazonaws.com/Syllabus-Template-June-2024.docx
USC Brightspace login page: https://brightspace.usc.edu
Create a Quiz https://www.youtube.com/watch?v=2oy6qfQSaWM&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=4
Create an assignment https://www.youtube.com/watch?v=wLJXYjU3cOU&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=4&t=12s
create course content https://www.youtube.com/watch?v=O-SUwztncyQ&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=5
Set Up a Course https://www.youtube.com/watch?v=Pji71PsBVTg&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=6&t=11s
Create and Edit a Rubric https://www.youtube.com/watch?v=kcgBMAVqeuo&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=13&t=9s
Grading in Brightspace https://www.youtube.com/watch?v=RYW3T8vvK5Q&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=19
Grading submissions in Assignments https://www.youtube.com/watch?v=dKcFmfGrk5o&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=46
Set-up extra credit https://www.brightspacehelp.usc.edu/instructors/set-up-extra-credit/
Brightspace instructors guide: https://www.brightspacehelp.usc.edu/instructors/
            # ... (add all other resources here)
        }

    def get_response(self, user_query):
        # Convert query to lowercase for case-insensitive matching
        user_query = user_query.lower()
        
        # Check if any resource keywords match the user query
        for keyword, url in self.resources.items():
            if keyword in user_query:
                return self.format_response(keyword, url)
        
        # If no match found, return a default response
        return self.default_response()

    def format_response(self, keyword, url):
        response = f"To {keyword}, please follow these steps:\n\n"
        response += "1. Log in to your Brightspace account\n"
        response += "2. Navigate to the relevant section\n"
        response += f"3. Follow the detailed instructions provided in this guide: {url}\n\n"
        response += self.get_footer()
        return response

    def default_response(self):
        response = "I'm sorry, I couldn't find specific information for your query. "
        response += "For general guidance, please visit the Brightspace instructors guide: "
        response += "https://www.brightspacehelp.usc.edu/instructors/\n\n"
        response += self.get_footer()
        return response

    def get_footer(self):
        footer = "If you need further assistance, please feel free to "
        footer += "[schedule a Zoom meeting](https://calendly.com/d/cpxx-s9g-9qv/brightspace-troubleshooting) "
        footer += "with our Instructional Designer or reach out to:\n"
        footer += "- Technical Support Line: 888-895-2812\n"
        footer += "- Email Support: usc@d2l.com\n"
        footer += "**For USC-Specific Requests**:\n"
        footer += "- ITS Email Support: brightspace@usc.edu\n"
        footer += "- ITS Support Desk Hotline: 213-740-5555 (Instructors dial 2)\n"
        footer += "*Disclaimer: Virtual assistance can make mistakes. Please verify important information.*"
        return footer

def main():
    helpdesk = BrightspaceHelpdesk()
    print("Welcome to the USC Brightspace IT Helpdesk!")
    print("How can I assist you today? (Type 'exit' to end the conversation)")

    while True:
        user_input = input("\nYour question: ")
        if user_input.lower() == 'exit':
            print("Thank you for using the USC Brightspace IT Helpdesk. Goodbye!")
            break
        response = helpdesk.get_response(user_input)
        print("\nHelpdesk: " + response)

if __name__ == "__main__":
    main()
