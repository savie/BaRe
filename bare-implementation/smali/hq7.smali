.class public final Lhq7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldo4;


# static fields
.field public static final a:Lhq7;

.field public static final b:La66;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lhq7;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhq7;->a:Lhq7;

    .line 7
    .line 8
    new-instance v0, La66;

    .line 9
    .line 10
    const-string v1, "kotlin.String"

    .line 11
    .line 12
    sget-object v2, Lx56;->g:Lx56;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, La66;-><init>(Ljava/lang/String;Ly56;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lhq7;->b:La66;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lnp7;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lnp7;->k()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final b(Lop7;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lop7;->j(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d()Lp77;
    .locals 0

    .line 1
    sget-object p0, Lhq7;->b:La66;

    .line 2
    .line 3
    return-object p0
.end method
