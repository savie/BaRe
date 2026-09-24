.class public final Lrs0;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lgs0;

.field public final f:Lu95;

.field public final g:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lgs0;->a:Lgs0;

    .line 5
    .line 6
    iput-object v0, p0, Lrs0;->e:Lgs0;

    .line 7
    .line 8
    new-instance v0, Lu95;

    .line 9
    .line 10
    invoke-direct {v0}, Lu95;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lgs0;->d:Lgv7;

    .line 14
    .line 15
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lex6;

    .line 20
    .line 21
    new-instance v2, Lox;

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    invoke-direct {v2, v0, v3}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lps0;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-direct {v3, v4, v2}, Lps0;-><init>(ILmt3;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v3}, Lu95;->l(Lex6;Les5;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lrs0;->f:Lu95;

    .line 37
    .line 38
    new-instance v0, Lix6;

    .line 39
    .line 40
    invoke-direct {v0}, Lix6;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lrs0;->g:Lix6;

    .line 44
    .line 45
    return-void
.end method
