%Start by explaining how to open a new script, simply click the button of
%"new script"
%Then, explain how to save and open a script. Simply click on the save
%button, choose folder and name and save it. To open, we can simply click
%open, and choose the file. Another alternative is to simply drag the file,
%if we are already in the correct folder. If not in the correct folder, we
%can search using the top tab, and the left side to search for the right
%document, and simply drag. Notice that the matlab file is identified with
%a ".m" at the end

%Can also explain that the students will not be required to use Matlab for
%the IFAP course. The goal is twofold: 1 - to understand how the model
%works, for the cake-eating problem, and the firm investment problem, as
%well as interpreting the results; 2 - for the dissertation, it is always a
%good idea to know how to use different software pograms (like Matlab and
%Stata).

%Proceed by explaining the different windows: the editor window, where we
%will write the code; the the command window below, were we can see the
%code running, the results or potential mistakes/errors/issues; the folder
%window to the left, where we have the current location of the file we are
%working on; and the workspace window, where we have information on the
%variables created.

%When writing comments, use "%" symbol. This will not impact the actual
%code, it is just information, either for yourself, when using the code, or
%for other people who are reading the code. The information in a code is
%useful for 2 reasons: 1 - understand a specific line of coding, what it
%does, and what is used for; 2 - understand the results of each part of the
%code. The comments will be identified with the color green.

%Next, proceed with the initial commands for each code. The first one is
%"clear" or "clear all". This should be used in the beggining of every
%code, to avoid interference of other codes that we previously ran, or the
%results of other codes, to influence this code.

clear all

%Notice that, when we write the code in this way, we have 2 components of
%different colors, one is black and the other is purple. The part in black
%is a specific code, or a specific command. This is where we are telling
%matlab to do something. The part in purple, is to what the command is
%refering to, which, in this case, is everything. Notice, also, that the
%'all' component is with an orange line below. In this case, Matlab is
%identyfing a potential inefficiency with your code. You will still be able
%to run the code, but it may be a good idea to make the changes that are
%suggested by Matlab. For example, in this case, Matlab says "Using the
%'clear' command with the 'all' option decreases the speed of the code, and
%could be unnecessary. You can also check for more information by clicking
%on 'details'. Matlab explains that the 'clear' command should be used if
%we only have variables. The 'clear all' command should only be used if we
%want to clear functions and scripts.
%In conclusion, the components highlighted in orange color will consist of
%suggestions by Matlab to improve the efficiency of your code.

%In some cases, Matlab will be abe to identify a mistake in your code right
%away. For example, if you have:

%[b

%To check, remove the '%' part in the beggining. Notice that the initial
%part is underlined with red. Also, you can see on the bar on the
%right-hand side that is also interfering with other parts of the code.
%These issues have to be solved, otherwise your code will stop at the
%error.

%Follow-up by establishing how to define commands, for example, simple
%variables. Explain that, to define variables, matrices and functions, need
%to end the command with a ";". This also works, for example, for labels in
%the axis of graphs 

a = 1;

%Now, explain how to run the code (simply click the run button), or just
%parts of the code (select with the right-hand button of the mouse, click
%with the left-hand button, which should open a menu, and select "evaluate
%selection", or simply click on F9). Notice that the keyboard keys for each
%action are also displayed on the menu. Also explain that, when running the
%code, the codes will appear on the command window below. Any error with
%the code will appear in the Command Window, in the color red, as well as
%the corresponding location (file and line), and the reason for the error.

%WHEN RUNNING A CODE FOR THE FIRST TIME, you should run it by parts, so you
%are able to understand what each part is doing. Otherwise, you will only
%obtain the end results.

%Open the created variable by double clicking it on the workspace. This
%will open a new menu, with information on the variable. We have the
%dimensions (since it is a single variable, it is (1x1)), and classified as
%a 'double' variable. These are the list of the type of variables: 1 - Byte
%- integers between -127 and 126; 2 - Int - integers between -32,767 and
%32,766; 3 - Long - integers between -2,147,483,647 and 2,147,483,646; 4 -
%Float - real numbers with approx 8 digit accuracy; 5 - Double - real
%numbers with approx 16 digits of accuracy.

%Proceed by explaining how to set a vector, instead of a variable. The
%following command establishes how to set a vector. The first element is
%the initial value of the vector, the second is the distance between each
%element, and the third is the last value of the vector

B = 0:0.1:1;

%To set matrices instead of vectors, can choose this with a 3x2 dimension.
%In this case, we will have a matrix with 3 rows, and 2 collumns, and all
%the values within the matrix will be equal to 1.
%We will see in the next classes different ways to establish matrices
C = ones(3,2);

%For functions, we can use the same reasoning:
d = log(a);
D = log(B);
E = B/2;

%These are the basics on how to work with Matlab. The next step is to know
%how to use loops (a repeated command). This is useful if we want to repeat
%a command several times, but instead of writing it over and over, we can
%use a loop. Explain we can change the range of i. Try changing to 30
%instead of 20, for example.

for i=1:20
    F(i)=i;
end

for i=1:20
    G(i)=i*i;
end

for i=1:20
  H(i) = log(i);  
end

%We can also plot figures and graphs

figure (1)

plot (F,G);
xlabel('F function');
ylabel('G function');

figure (2)

plot (F,H);
xlabel('F function');
ylabel('H function');

%Same as before, but for a matrix. In this simpple case, we are simply
%allocating the values of the diagonal (the values outside of the diagonal
%will be equal to 0)

for i=1:5
  J(i,i) = log(i);  
end

%What if we want to allocate the values outside of the diagonal. Have to
%resort to a double loop

%This first case, this is a symmetric matrix.
for j = 1:5 %this will be for the elements in the collumns 
    for i = 1:5 %this will be for the elements in the rows
        K(i,j) = i*j;
    end
end


for j = 1:5 %this will be for the elements in the collumns 
    for i = 1:4 %this will be for the elements in the rows
        L(i,j) = i*log(j);
    end
end

%Finally, if you want to save the results, you can simply click on the
%workspace part, and then choose save (or select the option in the 'Home'
%menu). You can open them by simply double-clicking it.