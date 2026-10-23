.class public final Ll84;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final b:Ljava/lang/ThreadLocal;

.field public static final c:Ll84;


# instance fields
.field public final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj13;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lj13;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ll84;->b:Ljava/lang/ThreadLocal;

    .line 12
    .line 13
    new-instance v0, Ll84;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Ll84;-><init>([B)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Ll84;->c:Ll84;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll84;->a:[B

    .line 5
    .line 6
    return-void
.end method

.method public static a()Ll84;
    .locals 3

    .line 1
    sget-object v0, Ll84;->b:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v2, v0, v1

    .line 11
    .line 12
    check-cast v2, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance v0, Ll84;

    .line 21
    .line 22
    sget v1, Ln84;->a:I

    .line 23
    .line 24
    const/16 v1, 0x2000

    .line 25
    .line 26
    new-array v1, v1, [B

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ll84;-><init>([B)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    .line 36
    sget-object v0, Ll84;->c:Ll84;

    .line 37
    .line 38
    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object p0, p0, Ll84;->a:[B

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ll84;->b:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aget-object v0, p0, v0

    .line 15
    .line 16
    check-cast v0, [B

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    aput-object v0, p0, v1

    .line 25
    .line 26
    :cond_0
    return-void
.end method
