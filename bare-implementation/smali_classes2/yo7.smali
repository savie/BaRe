.class public final Lyo7;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lex6;

.field public final f:Lix6;


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
    iput-object v0, p0, Lyo7;->e:Lex6;

    .line 10
    .line 11
    new-instance v0, Lix6;

    .line 12
    .line 13
    invoke-direct {v0}, Lix6;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lyo7;->f:Lix6;

    .line 17
    .line 18
    sget-object v0, Lzn4;->a:Lzn4;

    .line 19
    .line 20
    new-instance v0, Lwo7;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, Lwo7;-><init>(Lyo7;Ljv1;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 27
    .line 28
    .line 29
    sget-object p0, Leo7;->a:Leo7;

    .line 30
    .line 31
    invoke-virtual {p0}, Leo7;->a()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
