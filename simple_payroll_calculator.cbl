       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-PAYROLL.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 EMPLOYEE-NAME       PIC A(30).
       01 HOURS-WORKED-TEXT   PIC X(5).
       01 HOURLY-WAGE-TEXT    PIC X(5).

       * Correct numeric formatting
       01 HOURS-WORKED        PIC 999V99.
       01 HOURLY-WAGE         PIC 999V99.
       01 GROSS-PAY           PIC 99999V99.

       * Ensure correct formatted dollar output
       01 FORMATTED-GROSS-PAY PIC $$$$9.99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter Employee Name: " WITH NO ADVANCING.
           DISPLAY SPACE.
           ACCEPT EMPLOYEE-NAME.

           DISPLAY "Enter Hours Worked: " WITH NO ADVANCING.
           DISPLAY SPACE.
           ACCEPT HOURS-WORKED-TEXT.
           MOVE FUNCTION NUMVAL(HOURS-WORKED-TEXT) TO HOURS-WORKED.

           DISPLAY "Enter Hourly Wage: " WITH NO ADVANCING.
           DISPLAY SPACE.
           ACCEPT HOURLY-WAGE-TEXT.
           MOVE FUNCTION NUMVAL(HOURLY-WAGE-TEXT) TO HOURLY-WAGE.

           COMPUTE GROSS-PAY = HOURS-WORKED * HOURLY-WAGE.
           MOVE GROSS-PAY TO FORMATTED-GROSS-PAY.

           DISPLAY "=================================".
           DISPLAY "          PAYROLL SUMMARY ".
           DISPLAY "=================================".
           DISPLAY "Employee Name: " EMPLOYEE-NAME.
           DISPLAY "Hours Worked:  " HOURS-WORKED.
           DISPLAY "Hourly Wage:   $" HOURLY-WAGE.
           DISPLAY "Gross Pay:     $" FORMATTED-GROSS-PAY.
           DISPLAY "=================================".

           STOP RUN.
