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
            "evaluate assignments": "https://community.d2l.com/brightspace/kb/articles/3529-evaluate-assignments-using-the-assignments-tool",
            "enter grades": "https://community.d2l.com/brightspace/kb/articles/3548-enter-grades-in-the-grades-tools",
            "course evaluations": "https://www.brightspacehelp.usc.edu/instructors/course-evaluations/",
            "create assignment": "https://community.d2l.com/brightspace/kb/articles/3608-create-an-assignment",
            "navigate brightspace": "https://community.d2l.com/brightspace/kb/articles/5451-navigate-brightspace-and-find-your-course",
            "create announcement": "https://www.youtube.com/watch?v=-JlI6OdzwL0",
            "create discussion": "https://www.youtube.com/watch?v=4Jw6GwPQN8M&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=41",
            "manage grades": "https://www.youtube.com/watch?v=_Uw-b-CyEPk&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=22",
            "setup grades": "https://www.youtube.com/watch?v=Pl4U3rcbPOM&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=18",
            "manage account": "https://www.youtube.com/watch?v=sCcHZlC-b1o&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=23",
            "add work to do widget": "https://www.youtube.com/watch?v=cgw9pi6wUcY&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=24",
            "class progress": "https://www.youtube.com/watch?v=oybFY7yPabE&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=26",
            "classlist": "https://www.youtube.com/watch?v=4lh69B9Qsbo&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=27",
            "media library": "https://www.youtube.com/watch?v=D8fWOekyD_Q&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=28",
            "discussions for journaling": "https://www.youtube.com/watch?v=PZlq9cMtDag&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=32",
            "randomized quiz questions": "https://www.youtube.com/watch?v=SsgnoSMSIqI&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=37",
            "html editor": "https://www.youtube.com/watch?v=BEYL4Z1fgJs&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=43",
            "evaluate discussions": "https://www.youtube.com/watch?v=Rc_No_-zbYA&list=PLxHabmZzFY6mbZnghbtOiYppofKPWe581&index=47",
            "browser support": "https://community.d2l.com/brightspace/kb/articles/5663-browser-support#supported-browsersz",
            "send email": "https://www.brightspacehelp.usc.edu/instructors/sending-email/",
            "turnitin": "https://www.brightspacehelp.usc.edu/instructors/turnitin-assignment-integration-student-submission-and-grading/",
            "manage files": "https://community.d2l.com/brightspace/kb/articles/3328-about-manage-files",
            "originality reports": "https://www.brightspacehelp.usc.edu/viewing-turnitin-originality-reports/",
            "rubrics": "https://www.brightspacehelp.usc.edu/rubrics-grading-and-providing-feedback-for-a-turnitin-assignment/",
            "create quiz": "https://community.d2l.com/brightspace/kb/articles/3413-create-and-configure-a-quiz",
            "course notifications": "https://www.brightspacehelp.usc.edu/communicating-with-students/sending-notifications/",
            "library course reserves": "https://www.brightspacehelp.usc.edu/files/2023/12/Instructor-ARES_-LTI-HELP-GUIDE.pdf",
            "pin course": "https://bswrittentutorials.s3.us-west-1.amazonaws.com/Pin+a+Course.pdf",
            "activate course": "https://community.d2l.com/brightspace/kb/articles/22383-activate-your-course#make-your-course-available-and-active",
            "record video": "https://bswrittentutorials.s3.us-west-1.amazonaws.com/Record+and+Post+a+Video+or+Audio+Lecture.pdf",
            "setup zoom": "https://bswrittentutorials.s3.us-west-1.amazonaws.com/Set+Up+Zoom+Meetings.pdf",
            "welcome email students": "https://bswrittentutorials.s3.us-west-1.amazonaws.com/Welcome-to-Brightspace-Email-to-Students.docx",
            "welcome email ta": "https://bswrittentutorials.s3.us-west-1.amazonaws.com/TA-Welcome-To-Brightspace-Email.docx",
            "bookable meetings": "https://bswrittentutorials.s3.us-west-1.amazonaws.com/Set+up+Bookable+Appointments.pdf",
            "short video note": "https://bswrittentutorials.s3.us-west-1.amazonaws.com/Record+and+Post+a+Short+Video+or+Audio+Note.pdf",
            "syllabus template": "https://bswrittentutorials.s3.us-west-1.amazonaws.com/Syllabus-Template-June-2024.docx",
            "login": "https://brightspace.usc.edu",
            "extra credit": "https://www.brightspacehelp.usc.edu/instructors/set-up-extra-credit/",
            "instructors guide": "https://www.brightspacehelp.usc.edu/instructors/"
        }

    def get_response(self, user_query):
        user_query = user_query.lower()
        matched_resources = []

        for keyword, url in self.resources.items():
            if keyword in user_query:
                matched_resources.append((keyword, url))

        if matched_resources:
            return self.format_response(matched_resources)
        return self.default_response()

    def format_response(self, matched_resources):
        response = "Here are the resources that may help you:\n\n"
        for keyword, url in matched_resources:
            response += f"To {keyword}:\n"
            response += f"1. Log in to your Brightspace account at {self.resources['login']}\n"
            response += "2. Navigate to the relevant section\n"
            response += f"3. Follow the detailed instructions provided in this guide: {url}\n\n"
        response += self.get_footer()
        return response

    def default_response(self):
        response = "I'm sorry, I couldn't find specific information for your query. "
        response += "For general guidance, please visit the Brightspace instructors guide: "
        response += f"{self.resources['instructors guide']}\n\n"
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
    print("Welcome to the Brightspace Helpdesk Chatbot, your virtual IT support assistant dedicated to helping faculty members navigate and utilize Brightspace effectively.")
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
