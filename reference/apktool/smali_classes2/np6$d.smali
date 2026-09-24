.class public final Lnp6$d;
.super Lnp6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnp6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final INSTANCE:Lnp6$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnp6$d;

    .line 2
    .line 3
    invoke-direct {v0}, Lnp6$d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnp6$d;->INSTANCE:Lnp6$d;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lnp6;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p0, p1, Lnp6$d;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    return v0
.end method

.method public getRootAccessValueString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "No root, ADB access via Shizuku"

    .line 2
    .line 3
    return-object p0
.end method

.method public getRootProviderValueString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lqe7;->a()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const-string v0, "Shizuku v"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    const p0, -0x17bc7ff1

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ShizukuMode"

    .line 2
    .line 3
    return-object p0
.end method
