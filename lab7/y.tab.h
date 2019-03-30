/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    LP = 258,
    RP = 259,
    ADD = 260,
    SUB = 261,
    MUL = 262,
    DIV = 263,
    ASSIGN = 264,
    SEMI = 265,
    MOD = 266,
    ID = 267,
    GT = 268,
    LT = 269,
    GE = 270,
    LE = 271,
    NEQ = 272,
    EQ = 273,
    LAND = 274,
    LOR = 275,
    LNOT = 276,
    BAND = 277,
    BOR = 278,
    BXOR = 279,
    SL = 280,
    SR = 281,
    ADDASSIGN = 282,
    SUBASSIGN = 283,
    MULASSIGN = 284,
    DIVASSIGN = 285,
    MODASSIGN = 286,
    SLASSIGN = 287,
    SRASSIGN = 288,
    BANDASSIGN = 289,
    BORASSIGN = 290,
    BXORASSIGN = 291,
    BNOT = 292,
    INC = 293,
    DEC = 294
  };
#endif
/* Tokens.  */
#define LP 258
#define RP 259
#define ADD 260
#define SUB 261
#define MUL 262
#define DIV 263
#define ASSIGN 264
#define SEMI 265
#define MOD 266
#define ID 267
#define GT 268
#define LT 269
#define GE 270
#define LE 271
#define NEQ 272
#define EQ 273
#define LAND 274
#define LOR 275
#define LNOT 276
#define BAND 277
#define BOR 278
#define BXOR 279
#define SL 280
#define SR 281
#define ADDASSIGN 282
#define SUBASSIGN 283
#define MULASSIGN 284
#define DIVASSIGN 285
#define MODASSIGN 286
#define SLASSIGN 287
#define SRASSIGN 288
#define BANDASSIGN 289
#define BORASSIGN 290
#define BXORASSIGN 291
#define BNOT 292
#define INC 293
#define DEC 294

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 36 "syntax.y" /* yacc.c:1909  */

	char* str;
	struct node* s;

#line 137 "y.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
