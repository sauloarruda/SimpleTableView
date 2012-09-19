//
//  TVCidades.m
//  SimpleTableView
//
//  Created by Saulo Arruda on 9/18/12.
//  Copyright (c) 2012 Jera. All rights reserved.
//

#import "TVCidades.h"

static NSArray* __cidades;

@implementation TVCidades

+ (NSArray*)todasCidades
{
    if (!__cidades)
        __cidades = [NSArray arrayWithObjects:@"Campo Grande", @"Bonito", @"Dourados", @"Corguinho", nil];
    return __cidades;
}

+ (NSArray*)todosAtrativosCidade:(NSString*)cidade
{
    if ([@"Campo Grande" isEqualToString:cidade]) {
        return [NSArray arrayWithObjects:@"Obelisco", @"Parque das Nações Indígenas", @"Shopping Campo Grande", nil];
    }
    else if ([@"Bonito" isEqualToString:cidade]) {
        return [NSArray arrayWithObjects:@"Gruta do Lago Azul", @"Taboa", nil];
    }
    else if ([@"Corguinho" isEqualToString:cidade]) {
        return [NSArray arrayWithObjects:@"ET Bilu", nil];
    }
    return [NSArray array];
}

@end

