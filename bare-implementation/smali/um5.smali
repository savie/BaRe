.class public final Lum5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Landroid/nfc/Tag;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;ILjava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lum5;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    iput-object p3, p0, Lum5;->b:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    iput-object p1, p0, Lum5;->c:Landroid/nfc/Tag;

    .line 14
    .line 15
    iput p2, p0, Lum5;->d:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lky8;
    .locals 3

    .line 1
    const-class v0, Ltm5;

    .line 2
    .line 3
    invoke-virtual {v0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lum5;->c:Landroid/nfc/Tag;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget p0, p0, Lum5;->d:I

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->connect()V

    .line 24
    .line 25
    .line 26
    new-instance p0, Ltm5;

    .line 27
    .line 28
    invoke-direct {p0, v1}, Ltm5;-><init>(Landroid/nfc/tech/IsoDep;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lky8;

    .line 36
    .line 37
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    const-string p0, "the tag does not support ISO-DEP"

    .line 42
    .line 43
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_1
    const-string p0, "The connection type is not supported by this session"

    .line 48
    .line 49
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v2
.end method

.method public final b(Lvz0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lum5;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/io/IOException;

    .line 10
    .line 11
    const-string v0, "Can\'t requestConnection after calling remove()"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcn6;->a(Ljava/lang/Exception;)Lcn6;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p1, p0}, Lvz0;->invoke(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Lty1;

    .line 25
    .line 26
    const/4 v1, 0x7

    .line 27
    invoke-direct {v0, v1, p0, p1}, Lty1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lum5;->b:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NfcYubiKeyDevice{tag="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lum5;->c:Landroid/nfc/Tag;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", timeout="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lum5;->d:I

    .line 19
    .line 20
    const/16 v1, 0x7d

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Leq3;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
