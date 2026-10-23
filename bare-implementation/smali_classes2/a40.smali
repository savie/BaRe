.class public final La40;
.super Lqo0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lex6;

.field public final f:Lex6;

.field public final g:Lex6;


# direct methods
.method public constructor <init>()V
    .locals 3

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
    iput-object v0, p0, La40;->e:Lex6;

    .line 10
    .line 11
    new-instance v1, Lex6;

    .line 12
    .line 13
    invoke-direct {v1}, Lzy4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, La40;->f:Lex6;

    .line 17
    .line 18
    new-instance v2, Lex6;

    .line 19
    .line 20
    invoke-direct {v2}, Lzy4;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, La40;->g:Lex6;

    .line 24
    .line 25
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 28
    .line 29
    .line 30
    sget-object p0, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    .line 32
    invoke-static {}, Lyc6;->a()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lyc6;->b()Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lyc6;->f()Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v2, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
