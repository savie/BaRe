.class public final Lcz1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Laz1;


# static fields
.field public static final c:Llk;


# instance fields
.field public final a:Llu5;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Llk;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcz1;->c:Llk;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Llu5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcz1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    iput-object p1, p0, Lcz1;->a:Llu5;

    .line 13
    .line 14
    new-instance v0, Ler1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Ler1;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Llu5;->a(Lig2;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getSessionFileProvider(Ljava/lang/String;)Ltk5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcz1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Laz1;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcz1;->c:Llk;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-interface {p0, p1}, Laz1;->getSessionFileProvider(Ljava/lang/String;)Ltk5;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final hasCrashDataForCurrentSession()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcz1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Laz1;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Laz1;->hasCrashDataForCurrentSession()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final hasCrashDataForSession(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcz1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Laz1;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Laz1;->hasCrashDataForSession(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final prepareNativeSession(Ljava/lang/String;Ljava/lang/String;JLvm7;)V
    .locals 2

    .line 1
    const-string p2, "Deferring native open session: "

    .line 2
    .line 3
    invoke-static {p2, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "FirebaseCrashlytics"

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance p2, Lbz1;

    .line 21
    .line 22
    check-cast p5, Lje0;

    .line 23
    .line 24
    invoke-direct {p2, p1, p3, p4, p5}, Lbz1;-><init>(Ljava/lang/String;JLje0;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcz1;->a:Llu5;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Llu5;->a(Lig2;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
