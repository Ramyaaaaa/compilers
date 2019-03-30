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

#ifndef YY_YY_DAG_HH_INCLUDED
# define YY_YY_DAG_HH_INCLUDED
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
    ID = 258,
    ADD = 259,
    SUB = 260,
    MUL = 261,
    DIV = 262,
    ASSIGN = 263,
    LP = 264,
    RP = 265,
    MOD = 266,
    OS = 267,
    CS = 268,
    IF = 269,
    WHILE = 270,
    LEQ = 271,
    LT = 272,
    GEQ = 273,
    GT = 274,
    ELSE = 275,
    EQ = 276,
    NEQ = 277,
    SEMI = 278,
    AND = 279,
    OR = 280,
    OB = 281,
    CB = 282,
    NOT = 283
  };
#endif
/* Tokens.  */
#define ID 258
#define ADD 259
#define SUB 260
#define MUL 261
#define DIV 262
#define ASSIGN 263
#define LP 264
#define RP 265
#define MOD 266
#define OS 267
#define CS 268
#define IF 269
#define WHILE 270
#define LEQ 271
#define LT 272
#define GEQ 273
#define GT 274
#define ELSE 275
#define EQ 276
#define NEQ 277
#define SEMI 278
#define AND 279
#define OR 280
#define OB 281
#define CB 282
#define NOT 283

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 90 "dag.y" /* yacc.c:1909  */

    char* str;

#line 114 "dag.hh" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_DAG_HH_INCLUDED  */
