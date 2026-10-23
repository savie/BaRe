.class public final Lvd;
.super Lcy0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final j:Lvd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lvd;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lvd;->j:Lvd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/annotation/Annotation;)Lcy0;
    .locals 1

    .line 1
    new-instance p0, Lzd;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lzd;->j:Ljava/lang/Class;

    .line 11
    .line 12
    iput-object p1, p0, Lzd;->k:Ljava/lang/annotation/Annotation;

    .line 13
    .line 14
    return-object p0
.end method

.method public final c()Ls79;
    .locals 1

    .line 1
    new-instance p0, Ls79;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Ls79;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final d()Lee;
    .locals 0

    .line 1
    sget-object p0, Lcy0;->a:Lxd;

    .line 2
    .line 3
    return-object p0
.end method

.method public final y(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
