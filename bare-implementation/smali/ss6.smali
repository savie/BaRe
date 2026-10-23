.class public final Lss6;
.super Ltt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final f:Ll15;


# instance fields
.field public e:Lro;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lss6;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lss6;->f:Ll15;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final H(Lst6;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lss6;->e:Lro;

    .line 2
    .line 3
    iget-object v1, p1, Lev6;->a:Ldv6;

    .line 4
    .line 5
    check-cast v1, Lut6;

    .line 6
    .line 7
    iget v1, v1, Lut6;->d:I

    .line 8
    .line 9
    iget-object v2, v0, Lro;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/concurrent/Semaphore;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p1, Lev6;->a:Ldv6;

    .line 17
    .line 18
    check-cast v1, Lut6;

    .line 19
    .line 20
    iget v1, v1, Lut6;->d:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v0, v0, Lro;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ljava/util/concurrent/Semaphore;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    filled-new-array {v1, p1, v0}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lss6;->f:Ll15;

    .line 43
    .line 44
    const-string v2, "Server granted us {} credits for {}, now available: {} credits"

    .line 45
    .line 46
    invoke-interface {v1, v2, v0}, Ll15;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lol1;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lol1;->t(Lev6;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
