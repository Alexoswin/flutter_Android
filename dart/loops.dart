import 'dart:io';
void main(){
print("enter the size of the triangle");
int size = int.parse(stdin.readLineSync()!);

// rignt angle triangle

for(int i = 1; i<=size; i++){
    for(int j = 1 ;j<=i; j++){
        stdout.write(" X ");
    }
    print('');
}

// tringle 2 
print("");

for(int i = 1; i<=size; i++){
    int space = size - i;
    for(int j = space ;j>=1; j--){
        stdout.write("   ");
    }
    for(int j = 1 ;j<=i; j++){
        stdout.write(" X ");
    }
    
    print('');
}

// tringle 3 
print("");

for(int i = 1; i<=size; i++){
    int space = size - i;
    for(int j = space ;j>=1; j--){
        stdout.write("   ");
    }
    for(int j = 1 ;j<=i; j++){
        stdout.write(" X ");
    }
     for(int j = 1 ;j<=i-1; j++){
        stdout.write(" X ");
    }
    print("");
    
}

// diamond
print("");

for(int i = 1; i<=size; i++){
    int space = size - i;
    for(int j = space ;j>=1; j--){
        stdout.write("   ");
    }
    for(int j = 1 ;j<=i; j++){
        stdout.write(" X ");
    }
     for(int j = 1 ;j<=i-1; j++){
        stdout.write(" X ");
    }
    print("");
    
}

for(int i = size-1; i>=1; i--){
    int space = size - i;
    for(int j = space ;j>=1; j--){
        stdout.write("   ");
    }
    for(int j = 1 ;j<=i; j++){
        stdout.write(" X ");
    }
     for(int j = 1 ;j<=i-1; j++){
        stdout.write(" X ");
    }
    print("");
    
}


// to print a rectangle 
print("enter the length of the rectangle");
int length = int.parse(stdin.readLineSync()!);
print("enter the breath of the rectangle");
int breath = int.parse(stdin.readLineSync()!);


for(int i = 1; i<=breath; i++){
    for(int j = 1; j<=length; j++){
        stdout.write(" X ");
    }
    print("");
}

print("");

// hollow rectangle
for(int i = 1;i<=breath;i++){
    for(int j = 1;j<=length;j++){
        if(i==1 || j==1 || i== breath || j== length){
            stdout.write(" X ");
        }
        else{
            stdout.write("   ");
        }
    }
    print("");
}




}