.class public final Lkf2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lr56;
.implements Ljava/io/Serializable;


# instance fields
.field public a:Las5;

.field public b:Las5;

.field public c:Lz77;

.field public transient d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz77;

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lz77;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lfk4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkf2;->a:Las5;

    .line 2
    .line 3
    invoke-virtual {v0}, Las5;->b0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lkf2;->d:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    iput v0, p0, Lkf2;->d:I

    .line 14
    .line 15
    :cond_0
    const/16 p0, 0x5b

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lfk4;->J(C)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
