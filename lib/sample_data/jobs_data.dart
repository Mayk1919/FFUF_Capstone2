import 'dart:convert';

String jobsJson = jsonEncode({
  "jobs": [
    {
      "jobId": 1,
      "jobTitle": "Bookkeeper",
      "company": "Paragon AA Corporation",
      "category": "Accounting/Finance",
      "subCategory": "General/Cost Accounting",
      "location": "Davao del Sur",
      "salary": 18000.00,
      "jobType": "Full Time",
      "jobApplicantCount": 10,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "The Company is looking for an experienced Bookkeeper to assist in managing the day-to-day accounting and finance requirements."
        },
        {"jobDescription": "Confidentiality"},
        {
          "jobDescription":
              "Excellent organization skills and accuracy are important qualification for this position"
        },
        {
          "jobDescription":
              "Good customer relations and the ability to communicate clearly"
        },
        {"jobDescription": "Skilled multi-tasker"},
        {"jobDescription": "Reliable "},
        {"jobDescription": "Committed to consistently meeting deadline"}
      ],
      "requirements": [
        {
          "requirement":
              "Candidate must possess at least a Bachelor's/College Degree, Accountancy, Finance, Business Studies/Administration/Management, or equivalent."
        },
        {
          "requirement":
              "Required skill(s): Efficiency in Accounting System Programs, Ability to organize files, Attention to details, able to communicate written & oral and computer literate, willing to work longer hours with less supervision."
        },
        {
          "requirement":
              "At least 2 year(s) of working experience in the related field is required for this position."
        },
        {
          "requirement":
              "Preferably 1-2 Yrs Experienced Employees specializing in Finance/Accounting/Sales - Retail/General or equivalent."
        },
        {
          "requirement":
              "Strong understanding of business and income tax worksheet and computation"
        },
        {
          "requirement":
              "Extensive experience with data entry, record keeping and computer operation."
        },
        {
          "requirement":
              "Strong knowledge of generally accepted accounting principle"
        },
        {"requirement": "Proficiency in MS Office, Excel and QuickBook."}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "02 March 2022",
          "review": "Good Employer",
          "rating": 5.0
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "03 April 2022",
          "review": "Need Higher Salary",
          "rating": 3.0
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "04 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.5
        }
      ],
      "datePosted": "29 May 2022",
      "imageUrl": "assets/images/company_logo/ParagonAACorporation.JPG"
    },
    {
      "jobId": 2,
      "jobTitle": "WORK FROM HOME BOOKKEEPER",
      "company": "OJO Bookkeeping",
      "category": "Accounting/Finance",
      "subCategory": "General/Cost Accounting",
      "location": "Manila",
      "salary": 41000.00,
      "jobType": "Full Time",
      "jobApplicantCount": 5,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "We are a bookkeeping company that offers remote bookkeeping services to rental property management companies (clients) throughout the USA. We are rapidly growing and expanding our team!"
        },
        {
          "jobDescription":
              "We are looking for an enthusiastic individual who wants a long-term career.... someone who is experienced in accounting/bookkeeping to work on our team.... someone who is very competent in using all aspects of their computer and enjoys solving both technical and analytical bookkeeping problems. "
        },
        {
          "jobDescription":
              "We are looking for someone who enjoys working with people. You must be a people person!"
        },
        {
          "jobDescription":
              "We are looking for candidates that think outside the box. This is a position where you make decisions based upon knowledge of the work involved. "
        },
        {
          "jobDescription":
              "This is a fun job because you will be developing relationships, helping others, communicating regularly with your coworkers (remotely), learning new processes and sharing knowledge."
        },
        {
          "jobDescription":
              "If you are serious about committing to a long-term position, working full-time (40+ hours/week), you are who we are looking for!"
        }
      ],
      "requirements": [
        {
          "requirement":
              "Graduate of Accountancy, Business Administration Major in Management Accounting, or Accounting Technology and any related courses (CPA not required)"
        },
        {
          "requirement":
              "5+ years of experience in General Accounting for non-CPA applicants and 2+yrs for CPA applicants."
        },
        {"requirement": "Excellent English speaking and writing skills"},
        {
          "requirement":
              "Willingness to work US business hours… available and online 8 am-5 pm M-F US"
        },
        {
          "requirement":
              "A fast and reliable Windows 10 computer & super-fast internet"
        },
        {
          "requirement":
              "Proficiency and comfort with technology and your computer, installing windows software, etc"
        },
        {"requirement": "Quiet work environment"}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "02 May 2022",
          "review": "Good Employer",
          "rating": 4.0
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "03 May 2022",
          "review": "Need Higher Salary",
          "rating": 3.5
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "04 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.5
        }
      ],
      "datePosted": "01 March 2022",
      "imageUrl": "assets/images/company_logo/OJOBookkeeping.JPG"
    },
    {
      "jobId": 3,
      "jobTitle": "Human Resource Specialist",
      "company": "PHILIPPINE FISHING GEAR INDUSTRIES, INC",
      "category": "Admin/Human Resources",
      "subCategory": "Human Resources",
      "location": "Quezon City",
      "salary": 21000.00,
      "jobType": "Full Time",
      "jobApplicantCount": 0,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "In charge with the recruitment for main office personnel and key positions at the factory"
        },
        {
          "jobDescription":
              "Coordinate with Plant HR & Department Supervisors for HR initiated programs and activities "
        },
        {
          "jobDescription":
              "In charge with records keeping and management of employee records"
        },
        {
          "jobDescription":
              "Updates HR Monthly Reports for HRM review and presentation"
        },
        {
          "jobDescription":
              "Assist in updating company policy and HR process and procedures."
        },
        {
          "jobDescription":
              "Attends employee inquiry related to HR function and service."
        }
      ],
      "requirements": [
        {
          "requirement":
              "Candidate must be a graduate of BS Psychology/ Human Resource Management or any related course "
        },
        {"requirement": "Skills in Microsoft Office (Excel, Word, Powerpoint)"},
        {
          "requirement": "Preferably with atleast 3 year experience in HR Dep.t"
        },
        {"requirement": "Must have good analytical and communication skills"}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "06 May 2022",
          "review": "Good Employer",
          "rating": 4.6
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 4.5
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.1
        }
      ],
      "datePosted": "05 May 2022",
      "imageUrl":
          "assets/images/company_logo/PhilippineFishingGearIndustries.JPG"
    },
    {
      "jobId": 4,
      "jobTitle": "Virtual Assistant - Customer Service",
      "company": "TheClearDesk",
      "category": "Services",
      "subCategory": "Customer Service",
      "location": "Manila City",
      "salary": 50000.00,
      "jobType": "Freelance",
      "jobApplicantCount": 10,
      "isApplied": false,
      "isFavorite": true,
      "jobDescriptions": [
        {
          "jobDescription":
              "We are looking for an experienced Customer Service Assistant to help our client with customer inquiries and administrative tasks."
        }
      ],
      "requirements": [
        {"requirement": "Bachelor’s degree"},
        {"requirement": "Relevant Customer Service experience"},
        {
          "requirement": "Professional-level English (written and verbal/voice)"
        },
        {
          "requirement":
              "Experience using any CRM, Microsoft Office, and Google Workspace"
        },
        {
          "requirement":
              "Computer or laptop with access to the internet (min speed of 25 Mbps)"
        }
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "16 May 2022",
          "review": "Good Employer",
          "rating": 4.8
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "13 May 2022",
          "review": "Need Higher Salary",
          "rating": 4.2
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "14 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.6
        }
      ],
      "datePosted": "10 May 2022",
      "imageUrl": "assets/images/company_logo/TheClearDesk.JPG"
    },
    {
      "jobId": 5,
      "jobTitle": "Customer Service & Administrative Assistant",
      "company": "CSF Enterprise",
      "category": "Services",
      "subCategory": "Customer Service",
      "location": "Manila City",
      "salary": 16000.00,
      "jobType": "Part Time",
      "jobApplicantCount": 7,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {"jobDescription": "Assisting in daily office needs"},
        {
          "jobDescription":
              "Managing company’s general administrative activities."
        },
        {"jobDescription": "Maintaining and updating records."},
        {
          "jobDescription":
              "Communicate with others, solve problems, demonstrate patience and understanding, ensure customer satisfaction, and resolve customer complaints."
        },
        {
          "jobDescription":
              "Excellent time management skills and ability to multi-task and prioritize work. Attention to detail and problem solving skills. Excellent written and verbal communication skills. Strong organizational and planning skills."
        }
      ],
      "requirements": [
        {"requirement": "Bachelor's/College Degree"}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "01 May 2022",
          "review": "Good Employer",
          "rating": 4.5
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "03 May 2022",
          "review": "Need Higher Salary",
          "rating": 4.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "04 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.8
        }
      ],
      "datePosted": "28 April 2022",
      "imageUrl": "assets/images/company_logo/CSFEnterprise.JPG"
    },
    {
      "jobId": 6,
      "jobTitle": "Virtual Assistant - Social Media (Remote)",
      "company": "TheClearDesk",
      "category": "Sales/Marketing",
      "subCategory": "Digital Marketing",
      "location": "Remote",
      "salary": 50000.00,
      "jobType": "Remote",
      "jobApplicantCount": 20,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "We are looking for an experienced Social Media Assistant to help our client with its social media presence administrative tasks."
        }
      ],
      "requirements": [
        {"requirement": "Bachelor’s degree"},
        {"requirement": "Relevant Social Media experience"},
        {
          "requirement": "Professional-level English (written and verbal/voice)"
        },
        {
          "requirement":
              "Experience using Social Media platforms, Microsoft Office, and Google Workspace"
        },
        {
          "requirement":
              "Experience with Hootsuite, Canva, or Buffer (preferred)"
        },
        {
          "requirement":
              "Computer or laptop with access to the internet (min speed of 25 Mbps)"
        }
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "01 May 2022",
          "review": "Good Employer",
          "rating": 4.5
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "03 May 2022",
          "review": "Need Higher Salary",
          "rating": 4.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "04 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.8
        }
      ],
      "datePosted": "20 April 2022",
      "imageUrl": "assets/images/company_logo/TheClearDesk.JPG"
    },
    {
      "jobId": 7,
      "jobTitle": "PLANNING STAFF",
      "company": "Juntec Corporation",
      "category": "Engineering",
      "subCategory": "Industrial Engineering",
      "location": "Laguna",
      "salary": 18000.00,
      "jobType": "Contract",
      "jobApplicantCount": 10,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "Act as customer window. Handles all inquiries pertaining to forecast, PO, deliveries and product status."
        },
        {
          "jobDescription":
              "Prepares and updates the Daily Production Schedule(Daily Monitoring Plan)."
        },
        {
          "jobDescription":
              "Prepares the monthly material requirement plan based on standard lead time and customer requirements."
        }
      ],
      "requirements": [
        {"requirement": "Bachelor's/College Degree"}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "01 May 2022",
          "review": "Good Employer",
          "rating": 4.5
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "03 May 2022",
          "review": "Need Higher Salary",
          "rating": 4.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "04 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.8
        }
      ],
      "datePosted": "28 April 2022",
      "imageUrl": "assets/images/company_logo/JuntecCorporation.JPG"
    },
    {
      "jobId": 8,
      "jobTitle": "QUALITY ASSURANCE SPECIALIST",
      "company": "Sysu International, Inc.",
      "category": "Manufacturing",
      "subCategory": "Quality Assurance",
      "location": "Quezon City",
      "salary": 24000.00,
      "jobType": "Full Time",
      "jobApplicantCount": 20,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "Perform QA document control function, including document login, tracking, processing, distributing, and archiving."
        },
        {
          "jobDescription":
              "Coordinate the revision, review, and approval of SOPs and other GMP documents."
        },
        {
          "jobDescription":
              "Coordinate efforts associated with the preparation of regulatory documents or submissions."
        },
        {
          "jobDescription":
              "Communicate with regulatory agencies regarding pre-submission strategies, compliance test requirements, or clarification and follow-up of submissions under review."
        },
        {"jobDescription": "Participate in internal or external audits."},
        {
          "jobDescription":
              "Analyze product complaints and make recommendations regarding their reportability."
        }
      ],
      "requirements": [
        {
          "requirement":
              "Bachelor’s degree in Chemistry or related disciplines involving Food Science."
        },
        {
          "requirement":
              "1-3 years of experience in quality assurance management in the food industry."
        },
        {
          "requirement":
              "Extensive knowledge of food manufacturing processes & food safety regulations."
        },
        {"requirement": "Strong organizational skills."},
        {"requirement": "Strong oral and writing skills."},
        {"requirement": "Strong background in collaborating and team-working."}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 3.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.1
        }
      ],
      "datePosted": "16 May 2022",
      "imageUrl": "assets/images/company_logo/SysuInternationalInc.JPG"
    },
    {
      "jobId": 9,
      "jobTitle": "PRODUCTION ANALYST",
      "company": "DAVAO LUXUR VENTURES CORPORATION",
      "category": "Accounting/Finance",
      "subCategory": "General/Cost Accounting",
      "location": "Davao del Sur",
      "salary": 14000.00,
      "jobType": "Full Time",
      "jobApplicantCount": 0,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "Resolving discrepancies, examine and investigate misidentified or out of balance items with root cause analysis and identifying necessary preventive measure to assure there are no re-occurrence."
        },
        {
          "jobDescription":
              "Identify problematic inventory records/transactions, assure inventory balances are accurately maintained in all affect systems, and with permission from management make appropriate adjustments."
        },
        {
          "jobDescription":
              "Compiles, verifies, and reports monthly statistical information to management regarding inventory trends."
        },
        {
          "jobDescription":
              "Conduct daily inventory transactions to ensure inventory accuracy and provide real time data. The transactions include but are not limited to inventory receipts and cost center issues, production orders, inventory location movements, and authorized adjustments."
        },
        {
          "jobDescription":
              "Resolve process issues related to material managements, warehousing, and production control."
        },
        {
          "jobDescription":
              "Work with cross-functional teams (Quality, Engineering, Warehouse, Production, Logistics, and Purchasing) to ensure inventory control practices are being followed and assist in continuous improvement initiatives."
        }
      ],
      "requirements": [
        {
          "requirement":
              "Atleast with 1-2 years experience as Production analyst or Production related work in manufacturing company"
        }
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 3.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.1
        }
      ],
      "datePosted": "19 May 2022",
      "imageUrl": "assets/images/company_logo/DavaoLuxurVenturesCorporation.JPG"
    },
    {
      "jobId": 10,
      "jobTitle": "Partsman - Tacloban",
      "company": "Sakura Autoworld Inc.",
      "category": "Engineering",
      "subCategory": "Mechanical",
      "location": "Leyte",
      "salary": 14000.00,
      "jobType": "Contract",
      "jobApplicantCount": 5,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "Responsible for keeping track of inventory, ordering and purchasing parts, selling parts over the counter and preparing parts sales invoice"
        }
      ],
      "requirements": [
        {
          "requirement":
              "Candidate must possess at least Bachelor's Degree/Post Graduate Diploma/Professional Degree in Engineering (Mechanical) or Automotive Technology."
        },
        {
          "requirement":
              "At least 1 Year of working experience in the related field is required for this position."
        },
        {
          "requirement":
              "Computer literate and knowledgeable in Microsoft Applications; Excel, Word, and Powerpoint presentation"
        },
        {
          "requirement":
              "Knows how to drive, must have a valid driver's license"
        }
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 3.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.1
        }
      ],
      "datePosted": "17 May 2022",
      "imageUrl": "assets/images/company_logo/SakuraAutoworldInc.JPG"
    },
    {
      "jobId": 11,
      "jobTitle": "L2 Application Support",
      "company": "FPT Software Philippines Corporation",
      "category": "Services",
      "subCategory": "Tech & Helpdesk Support",
      "location": "Remote",
      "salary": 60000.00,
      "jobType": "Remote",
      "jobApplicantCount": 30,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {"jobDescription": "Capable to do Self-managed project"},
        {
          "jobDescription":
              "Works on this schedule: 11AM/12NN to 8PM/9PM PHT daily"
        },
        {"jobDescription": "Expected to be more flexible to change"},
        {
          "jobDescription":
              "Expected to put extra time/effort and interaction with US Team members during the first few days of the assignment to get more information/domain knowledge to start the task"
        }
      ],
      "requirements": [
        {"requirement": "Experience with Troubleshooting and system analysis"},
        {
          "requirement":
              "Experience with Scripting languages such as SQL, Python, and UNIX shell scripts"
        },
        {
          "requirement":
              "Experience with Event-based monitoring and navigation of Tools (such as Service Now, Moogsoft, etc.) to analyze and identify faults on all streaming platforms"
        },
        {"requirement": "Familiarity with OTT streaming products and systems"},
        {
          "requirement": "Understanding of network concepts and implementations"
        },
        {"requirement": "Understanding of software development principals"},
        {"requirement": "Understanding of cloud concepts and implementations"},
        {"requirement": "Familiar with Agile software development practices"},
        {
          "requirement":
              "Excellent interpersonal and communication skills – written and verbal"
        },
        {
          "requirement":
              "Ability to make decisions and work under high-stress situations"
        }
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 3.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.1
        }
      ],
      "datePosted": "11 May 2022",
      "imageUrl":
          "assets/images/company_logo/FPTSoftwarePhilippinesCorporation.JPG"
    },
    {
      "jobId": 12,
      "jobTitle": "Sales Executive",
      "company": "Unison Computer Systems, Inc.",
      "category": "Sales/Marketing",
      "subCategory": "Telesales/Telemarketing",
      "location": "Pasig City",
      "salary": 16000.00,
      "jobType": "Part Time",
      "jobApplicantCount": 12,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "Ability to identify and contact potential clients and close deals"
        },
        {"jobDescription": "Manage sales goals and quotas"},
        {
          "jobDescription":
              "Provide appropriate proposals, analysis/study pertaining to client's requirements"
        },
        {
          "jobDescription":
              "Candidate must possess at least a Bachelor's/College Degree in the field of IT, Computer courses, Management, Marketing and the like;"
        },
        {
          "jobDescription":
              "At least 6 months to 1 year of work-related experience;"
        },
        {
          "jobDescription":
              "Background in Telemarketing/Tele-sales is an advantage;"
        },
        {
          "jobDescription":
              "With good communication skills, both in oral and written;"
        },
        {
          "jobDescription":
              "Assertive, Outgoing, Team Builder, Great collaborator;"
        },
        {"jobDescription": "Excellent Interpersonal relationship skills;"},
        {
          "jobDescription":
              "Successful candidates await full learning and development thru training."
        }
      ],
      "requirements": [
        {
          "requirement":
              "Vocational Diploma/Short Course Certificate, Bachelor's/College Degree"
        }
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 3.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.1
        }
      ],
      "datePosted": "04 May 2022",
      "imageUrl": "assets/images/company_logo/UnisonComputerSystemsInc.JPG"
    },
    {
      "jobId": 13,
      "jobTitle": "Corporate Tax Supervisor",
      "company": "SUNWEST GROUP HOLDING COMPANY INC",
      "category": "Accounting/Finance",
      "subCategory": "Audit & Taxation",
      "location": "Pasig City",
      "salary": 45000.00,
      "jobType": "Full Time",
      "jobApplicantCount": 13,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "Provides periodic tax reminders (via email) ahead of time to Accounting and other departments responsible for each Tax report with details on the internal deadline for review and the gov't actual deadline for each tax reportorial requirement."
        },
        {
          "jobDescription":
              "Performs thorough review of each drafts tax report, accounting data, and supporting documents;"
        },
        {
          "jobDescription":
              "Drafts BOI Annual Tax Incentives Report and forward to Tax Manager for review and approval"
        },
        {
          "jobDescription":
              "Drafts BOI application forms for ITH availment forward to Tax Manager for review and approval and coordinates with Compliance dept."
        },
        {
          "jobDescription":
              "Examines tax returns, accounting schedules, contracts, and other relevant documents;"
        },
        {
          "jobDescription":
              "Assists superiors in detailed studies, tax risks evaluation, and pros/cons on tax issues affecting the operations or industry of the affiliates."
        },
        {
          "jobDescription":
              "Assists superiors in checking the applicable tax rulings, tax bases, tax rates (particularly in DST, CGT, and Donor's tax), and pros/cons of the transactions raised by different concerned departments."
        },
        {
          "jobDescription":
              "Supervises tax associates in preparation of documents and proper dealings with tax authorities to safeguard the business information of the group"
        },
        {"jobDescription": "Performs other tax duties as assigned."}
      ],
      "requirements": [
        {
          "requirement":
              "Candidate must possess at least Bachelor's Degree in Accountancy and a CPA Board Passer"
        },
        {
          "requirement":
              "Preferably with at least one (1) to two (2) years of relevant working experience in an accounting/audit firm or in a private company as a Tax Compliance Personnel"
        },
        {
          "requirement":
              "Proactive and able to work under pressure to meet client expectations and deadline"
        },
        {
          "requirement":
              "Must be knowledgeable in BIR, BOI, and PEZA tax laws and issuances"
        },
        {
          "requirement":
              "Experience specialized in corporate tax compliance audit and financial reporting"
        },
        {
          "requirement":
              "Must be trustworthy, and flexible. diligent, keen on details and solution-oriented"
        },
        {
          "requirement":
              "Excellent interpersonal relations and demonstrated ability to work with others effectively in teams"
        },
        {
          "requirement":
              "ability to work in a fast-paced and demanding environment"
        }
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 3.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.1
        }
      ],
      "datePosted": "16 May 2022",
      "imageUrl": "assets/images/company_logo/SunwestGroupHoldingCompanyInc.JPG"
    },
    {
      "jobId": 14,
      "jobTitle": "Post-Production Staff",
      "company": "Yearnings Outsourcing Cooperative",
      "category": "Arts/Media/Communications",
      "subCategory": "Advertising",
      "location": "National Capital Reg",
      "salary": 20000.00,
      "jobType": "Freelance",
      "jobApplicantCount": 22,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "Implements quality control and compliance on media assets in reference to post-production policies"
        },
        {"jobDescription": "Qualifies assets for airing and archiving"},
        {"jobDescription": "Manages assets within the media production server"},
        {"jobDescription": "Provides support in editing media/videos"}
      ],
      "requirements": [
        {"requirement": "Graduate of any 4-year course"},
        {"requirement": "At least 6 months of experience in post-production"},
        {"requirement": "Must know how to edit videos"},
        {"requirement": "With basic idea in media processing"},
        {"requirement": "With experience in a broadcasting company"}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 3.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.1
        }
      ],
      "datePosted": "04 May 2022",
      "imageUrl":
          "assets/images/company_logo/YearningsOutsourcingCooperative.JPG"
    },
    {
      "jobId": 15,
      "jobTitle": "Multimedia Artist",
      "company": "Ulticon Builders, Inc. - Manila",
      "category": "Arts/Media/Communications",
      "subCategory": "Arts/Creative Design",
      "location": "Remote",
      "salary": 35000.00,
      "jobType": "Remote",
      "jobApplicantCount": 11,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {"jobDescription": "Create motion graphics and edit videos."},
        {"jobDescription": "Create visual solutions."},
        {
          "jobDescription":
              "Prepare designs and layouts by gathering information and materials to create visual concepts."
        }
      ],
      "requirements": [
        {
          "requirement":
              "Graduate of Bachelor of Fine Arts (Visual Communication) or Bachelor of Arts in Multimedia Design"
        },
        {"requirement": "2-3 years of relevant experience"},
        {
          "requirement":
              "Experience in creating motion graphics and/or in creating ecommerce or digital marketing material"
        },
        {
          "requirement":
              "Knowledgeable in Adobe After Effects and Adobe Premier (this is a plus)"
        },
        {
          "requirement":
              "Willing to learn and use Affinity Serif Apps – Affinity Designer, Affinity Publisher and Affinity Photo"
        },
        {
          "requirement":
              "Willing to learn and use Apple Motion and/or Da Vinci Resolve 17 for motion graphics and video editing"
        },
        {
          "requirement":
              "Creative and resourceful, must have initiative at work"
        },
        {"requirement": "Should be able to work and collaborate with a team"},
        {"requirement": "Hard working and deadline-oriented professional."}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 3.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.1
        }
      ],
      "datePosted": "22 May 2022",
      "imageUrl": "assets/images/company_logo/UlticonBuildersInc.JPG"
    },
    {
      "jobId": 16,
      "jobTitle":
          "ESL TEACHER, ONLINE ENGLISH TEACHER, ONLINE ENGLISH TUTOR, HOMEBASED ENGLISH TEACHER",
      "company": "JerryMarie Power English",
      "category": "Education/Training",
      "subCategory": "Education",
      "location": "Remote",
      "salary": 30000.00,
      "jobType": "Remote",
      "jobApplicantCount": 16,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "JerryMarie Consultancy Services is looking for home-based online teachers (ESL) who can teach immersive English language to Korean students."
        },
        {
          "jobDescription":
              "You can earn a competitive rate as a high-performing full-time teacher or part time teacher."
        },
        {
          "jobDescription":
              "Join our family of fun and engaging teachers and earn from the comfort of your own home!!!"
        }
      ],
      "requirements": [
        {"requirement": "Must be at least 18 y/o"},
        {"requirement": "Basic computer literacy"},
        {"requirement": "Has good English proficiency"},
        {"requirement": "Has patience & passion for teaching"},
        {"requirement": "With ESL/BPO EXPERIENCE is a plus but not required"}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 4.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.5
        }
      ],
      "datePosted": "20 May 2022",
      "imageUrl": "assets/images/company_logo/JerryMariePowerEnglish.JPG"
    },
    {
      "jobId": 17,
      "jobTitle": "Program Director for Professional Development Program",
      "company": "I-Professional Search Network Inc.",
      "category": "Education/Training",
      "subCategory": "Education",
      "location": "National Capital Reg",
      "salary": 52000.00,
      "jobType": "Full Time",
      "jobApplicantCount": 9,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "Conducts needs assessments, determines probability of success of proposed programs, and selected and develops programs in response to needs of clients."
        },
        {
          "jobDescription":
              "Conducts focus group discussions with training clients, and consults with trainers on new courses to develop"
        },
        {
          "jobDescription":
              "Recruits and interviews instructors, negotiate salaries/fees and evaluate instructional performance."
        },
        {
          "jobDescription":
              "Prepares the program budget, prepare projections and break-even estimates."
        },
        {
          "jobDescription":
              "Assist in conducting promotional activities such as direct mailer, digital marketing, and other activities that would help increase enrollment."
        },
        {
          "jobDescription":
              "Supervises all necessary arrangements, materials, and equipment (as needed) maintaining close coordination with secretariat team."
        },
        {
          "jobDescription":
              "Performs necessary administrative duties such as correspondence and reports, including summary reports of individual programs."
        },
        {
          "jobDescription":
              "Analyzes enrollment trends and actively participates in long-range planning for future program needs."
        },
        {
          "jobDescription":
              "Prepares training proposals for institutional clients."
        },
        {
          "jobDescription":
              "Facilitates conduct of online training courses for PDP."
        },
        {
          "jobDescription":
              "Performs other tasks as may be assigned by the Managing Director"
        }
      ],
      "requirements": [
        {
          "requirement":
              "Graduate of Communication, Social Sciences, or Education Courses"
        },
        {
          "requirement":
              "With at least 10 years’ experience in conceptualizing, developing, and implementing learning and development training programs;"
        },
        {
          "requirement": "With very good written and oral communication skills;"
        },
        {
          "requirement":
              "Has worked in a higher educational institution before working in the same capacity"
        }
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 4.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.5
        }
      ],
      "datePosted": "17 May 2022",
      "imageUrl": "assets/images/company_logo/IProfessionalSearchNetworkInc.JPG"
    },
    {
      "jobId": 18,
      "jobTitle": "Software QA Engineer",
      "company": "Technomancer Inc",
      "category": "Computer/Information Technology",
      "subCategory": "IT-Software",
      "location": "National Capital Reg",
      "salary": 35000.00,
      "jobType": "Full Time",
      "jobApplicantCount": 0,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {"jobDescription": "Create test plan based on system requirements"},
        {
          "jobDescription": "Execute and document test cases based on test plan"
        },
        {
          "jobDescription":
              "Creates and tracks bugs, coordinating with the programmers and other team members"
        },
        {"jobDescription": "Report project status to project stakeholders"}
      ],
      "requirements": [
        {"requirement": "Strong SQL skills"},
        {"requirement": "Basic programming skills"}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.7
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 4.3
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.5
        }
      ],
      "datePosted": "30 April 2022",
      "imageUrl": "assets/images/company_logo/TechnomancerInc.JPG"
    },
    {
      "jobId": 19,
      "jobTitle": "Software Quality Assurance and Automations Engineer",
      "company": "Egissystems, Inc.",
      "category": "Computer/Information Technology",
      "subCategory": "IT-Software",
      "location": "Taguig City",
      "salary": 56000.00,
      "jobType": "Full Time",
      "jobApplicantCount": 20,
      "isApplied": false,
      "isFavorite": true,
      "jobDescriptions": [
        {
          "jobDescription":
              "Design, develop and execute both automated and manual test scripts from the ground up."
        },
        {
          "jobDescription":
              "Identifies, analyzes, and documents defects, questionable functions, errors, and inconsistencies. "
        },
        {
          "jobDescription":
              "Creates software components to drive automated testing and expandable in structure using Selenium (Java) based automation framework."
        },
        {
          "jobDescription":
              "Creates output/reports effectively and accurately documents all automated testing results. "
        },
        {
          "jobDescription":
              "Manages the continuous development of the QA Team’s standard practices and procedures. "
        },
        {
          "jobDescription":
              "Proactively responds to inquiries from users and technical support. "
        },
        {
          "jobDescription":
              "Utilize tools to test products and services that implement SOAP and REST XML formats."
        },
        {
          "jobDescription":
              "Create test plans and test cases from requirement documentation using TestRail."
        },
        {
          "jobDescription":
              "Track defects and issues using JIRA; keep product and test documentation updated in Confluence."
        },
        {
          "jobDescription":
              "Utilize SQL to effectively verify the results of testing."
        },
        {
          "jobDescription":
              "Use effective communication flow among internal team members."
        }
      ],
      "requirements": [
        {
          "requirement":
              "Bachelor's degree (BS) in Computer Science, Engineering."
        },
        {
          "requirement":
              "A minimum of 2 years of experience using Java, Python, Object-Oriented, JavaScript, Ruby, and RESTful APIs. Also experienced in Jira, TestRail, and Selenium or equivalent test management and automation tools. "
        },
        {
          "requirement":
              "Possesses a solid understanding of development and quality assurance testing methodologies including functional and regression, implementing accuracy and thoroughness in all work products."
        },
        {
          "requirement":
              "Demonstrated experience working in a Scrum/Agile environment."
        },
        {
          "requirement":
              "Ability to work successfully in a team environment as well as working independently and deliver project deliverables on time."
        },
        {"requirement": "Ability to work outside of normal business hours. "},
        {
          "requirement":
              "Experience with test automation tools, technologies, and test script development practices."
        },
        {
          "requirement":
              "Ability to effectively present information and respond to questions from groups of managers, support teams, clients, customers, and the public."
        }
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.8
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 5.0
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.5
        }
      ],
      "datePosted": "28 March 2022",
      "imageUrl": "assets/images/company_logo/EgissystemsInc.JPG"
    },
    {
      "jobId": 20,
      "jobTitle": "Processing Plant Engineer - Rosales, Pangasinan",
      "company": "Bounty Agro Ventures Inc.",
      "category": "Engineering",
      "subCategory": "Other Engineering",
      "location": "Pangasinan",
      "salary": 22000.00,
      "jobType": "Full Time",
      "jobApplicantCount": 5,
      "isApplied": false,
      "isFavorite": false,
      "jobDescriptions": [
        {
          "jobDescription":
              "Set-up and calibrate machines at the beginning of shift to ensure proper working order "
        },
        {
          "jobDescription":
              "Control and adjust the functions and setting of machines to specified parameter "
        },
        {
          "jobDescription":
              "Perform testing procedures to ensure that machines work optimally during the production "
        },
        {
          "jobDescription":
              "Maintain and clean machines before and after each shift "
        },
        {
          "jobDescription":
              "Monitor machine during every production to ensure optimum running "
        },
        {
          "jobDescription":
              "Troubleshoot and repair problems during machine operation "
        },
        {
          "jobDescription":
              "Ensure that regular and preventive maintenance procedures are carried out"
        },
        {"jobDescription": "Perform safety check on every machine "},
        {
          "jobDescription":
              "Ensure that machines are producing quality products by managing periodic checks on output "
        },
        {"jobDescription": "Create and maintain activity logs "},
        {
          "jobDescription":
              "Provide relevant information regarding progress to supervisor "
        },
        {
          "jobDescription":
              "Ensure timely preparation and availability of all production materials to avoid shortage during production "
        },
        {
          "jobDescription":
              "Communicate machine trouble with DP Engineering team "
        },
        {
          "jobDescription":
              "Perform other task which may be assigned from time to time "
        }
      ],
      "requirements": [
        {
          "requirement":
              "Candidate must be a graduate of electrical, mechanical, electro-mechanical or any related course"
        },
        {
          "requirement":
              "With at least one (1) year experience in machine operation in a food processing plant set-up"
        },
        {"requirement": "Must have basic trouble shooting and repair skills"},
        {"requirement": "Ability to read and understand technical manuals"},
        {
          "requirement":
              "Must have strong work ethic with the desire to succeed and advance with a growing company "
        },
        {"requirement": "Ability to work independently"},
        {"requirement": "Ability to multi task"},
        {"requirement": "Have a good knowledge of mechanical devices"},
        {
          "requirement":
              "Ability to use hand tools, measuring devices and testing equipment"
        },
        {"requirement": "Able to lift a maximum of 40kg"},
        {
          "requirement":
              "Familiarity with different mechanical and electrical parts"
        },
        {"requirement": "Committed to quality, safety and communication"}
      ],
      "reviews": [
        {
          "reviewerName": "John Doe",
          "reviewDate": "21 May 2022",
          "review": "Good Employer",
          "rating": 4.8
        },
        {
          "reviewerName": "Mang Tomas",
          "reviewDate": "23 May 2022",
          "review": "Need Higher Salary",
          "rating": 5.0
        },
        {
          "reviewerName": "Juan Dela Cruz",
          "reviewDate": "24 May 2022",
          "review": "Nice Pizza Friday",
          "rating": 4.5
        }
      ],
      "datePosted": "21 May 2022",
      "imageUrl": "assets/images/company_logo/BountyAgroVenturesInc.JPG"
    }
  ]
});
