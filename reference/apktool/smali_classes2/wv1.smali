.class public final Lwv1;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lex6;

.field public final f:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqo0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lex6;

    .line 5
    .line 6
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwv1;->e:Lex6;

    .line 10
    .line 11
    new-instance v0, Lq9;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, v1}, Lq9;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lgv7;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lwv1;->f:Lgv7;

    .line 23
    .line 24
    sget-object v0, Lzn4;->a:Lzn4;

    .line 25
    .line 26
    new-instance v0, Lvv1;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, v1}, Lvv1;-><init>(Lwv1;Ljv1;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 33
    .line 34
    .line 35
    return-void
.end method
