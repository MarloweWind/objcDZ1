//
//  main.m
//  objcDZ
//
//  Created by Алексей Мальков on 10.10.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

#import <Foundation/Foundation.h>

int menu() {
    int calcState = 0;
    
    printf("\nВыберете, что вы хотите сделать в введенными числами.\n");
    printf(" 1: Сложение\n");
    printf(" 2: Вычитание\n");
    printf(" 3: Умножение\n");
    printf(" 4: Деление\n");
    printf("\n");
    
    scanf("%i",&calcState);
    
    if (calcState == 1 || calcState == 2 || calcState == 3 || calcState == 4) {
        return calcState;
    } else {
        printf("Введите 1, 2, 3, 4");
        return menu();
    }
}

void calculator(){
    int first = 0;
    int second = 0;
    int state = 0;
    
    printf("\nВведите два числа\n");
    printf("Первое: ");
    scanf("%i", &first);
    
    if (first >= 0){
        printf("Второе: ");
        scanf("%i", &second);
    }
    
    if (first >= 0 && second >= 0){
        state = menu();
    }
    
    if (state != 0) {
        switch (state) {
            case 1:
                printf("Сумма двух чисел равна: %i\n", (first + second));
                break;
            case 2:
                printf("Вычитание двух чисел равно: %i\n", (first - second));
                break;
            case 3:
                printf("Умножение двух чичел равно: %i\n", (first * second));
                break;
            case 4:
                printf("Деление двух чисел равно: %i\n", (first / second));
                break;
            default:
                printf("Введите 1, 2, 3, 4");
                break;
        }
        calculator();
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        calculator();
    }
    return 0;
}
//на проверку
