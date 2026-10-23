.class public final Lmx;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lji;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public final h:Lgv7;


# direct methods
.method public constructor <init>(Lji;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lmx;->a:Lji;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lmx;->b:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lmx;->c:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lmx;->d:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lmx;->e:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lmx;->f:Z

    .line 19
    .line 20
    iput-boolean p1, p0, Lmx;->g:Z

    .line 21
    .line 22
    new-instance p1, Lfj;

    .line 23
    .line 24
    const/4 v0, 0x7

    .line 25
    invoke-direct {p1, p0, v0}, Lfj;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lgv7;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lmx;->h:Lgv7;

    .line 34
    .line 35
    return-void
.end method
