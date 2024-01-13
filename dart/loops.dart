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



}