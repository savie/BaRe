.class public final Lco8;
.super Lpo8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public g:Z

.field public final h:Lgv7;

.field public final i:Lex6;

.field public final j:Lix6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lpo8;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcl;

    .line 5
    .line 6
    const/16 v1, 0xe

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcl;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lco8;->h:Lgv7;

    .line 17
    .line 18
    new-instance v0, Lex6;

    .line 19
    .line 20
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lco8;->i:Lex6;

    .line 24
    .line 25
    new-instance v0, Lix6;

    .line 26
    .line 27
    invoke-direct {v0}, Lix6;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lco8;->j:Lix6;

    .line 31
    .line 32
    return-void
.end method
