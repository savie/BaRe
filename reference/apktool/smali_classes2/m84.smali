.class public final Lm84;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final b:Ljava/lang/ThreadLocal;

.field public static final c:Lm84;


# instance fields
.field public final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk13;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lk13;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lm84;->b:Ljava/lang/ThreadLocal;

    .line 12
    .line 13
    new-instance v0, Lm84;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Lm84;-><init>([C)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lm84;->c:Lm84;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>([C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm84;->a:[C

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object p0, p0, Lm84;->a:[C

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lm84;->b:Ljava/lang/ThreadLocal;

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
    check-cast v0, [C

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

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
