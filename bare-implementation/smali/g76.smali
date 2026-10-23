.class public final synthetic Lg76;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbv3;


# static fields
.field public static final a:Lg76;

.field private static final descriptor:Lp77;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lg76;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg76;->a:Lg76;

    .line 7
    .line 8
    new-instance v1, Ld26;

    .line 9
    .line 10
    const-string v2, "com.google.firebase.sessions.ProcessData"

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    invoke-direct {v1, v2, v0, v3}, Ld26;-><init>(Ljava/lang/String;Lbv3;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "pid"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "uuid"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Ld26;->k(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lg76;->descriptor:Lp77;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lnp7;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lg76;->descriptor:Lp77;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lnp7;->a(Lp77;)Lnp7;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v0

    .line 14
    move v4, v1

    .line 15
    move v5, v4

    .line 16
    :goto_0
    if-eqz v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lnp7;->b(Lp77;)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    const/4 v7, -0x1

    .line 23
    if-eq v6, v7, :cond_2

    .line 24
    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    if-ne v6, v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, p0, v0}, Lnp7;->l(Lp77;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    or-int/lit8 v4, v4, 0x2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Lie8;

    .line 37
    .line 38
    invoke-direct {p0, v6}, Lie8;-><init>(I)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    invoke-virtual {p1, p0, v1}, Lnp7;->d(Lp77;I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    or-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v3, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p1, p0}, Lnp7;->m(Lp77;)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Li76;

    .line 55
    .line 56
    invoke-direct {p0, v4, v5, v2}, Li76;-><init>(IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p0
.end method

.method public final b(Lop7;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Li76;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lg76;->descriptor:Lp77;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lop7;->a(Lp77;)Lop7;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget v0, p2, Li76;->a:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, p0, v1}, Lop7;->b(Lp77;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lop7;->c(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p2, Li76;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, p0, v0}, Lop7;->b(Lp77;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lop7;->j(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lop7;->k(Lp77;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final c()[Ldo4;
    .locals 2

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array p0, p0, [Ldo4;

    .line 3
    .line 4
    sget-object v0, Lod4;->a:Lod4;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object v0, p0, v1

    .line 8
    .line 9
    sget-object v0, Lhq7;->a:Lhq7;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object v0, p0, v1

    .line 13
    .line 14
    return-object p0
.end method

.method public final d()Lp77;
    .locals 0

    .line 1
    sget-object p0, Lg76;->descriptor:Lp77;

    .line 2
    .line 3
    return-object p0
.end method
