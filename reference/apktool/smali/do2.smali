.class public final Ldo2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldo4;


# static fields
.field public static final a:Ldo2;

.field public static final b:La66;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ldo2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldo2;->a:Ldo2;

    .line 7
    .line 8
    new-instance v0, La66;

    .line 9
    .line 10
    const-string v1, "kotlin.Double"

    .line 11
    .line 12
    sget-object v2, Lu56;->g:Lu56;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, La66;-><init>(Ljava/lang/String;Ly56;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Ldo2;->b:La66;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lnp7;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Lnp7;->c:Lvr1;

    .line 5
    .line 6
    invoke-virtual {p0}, Lvr1;->i()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object p1, p1, Lnp7;->a:Lni4;

    .line 16
    .line 17
    iget-object p1, p1, Lni4;->a:Ldj4;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Lbb9;->N(Lvr1;Ljava/lang/Number;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :catch_0
    const-string p1, "Failed to parse type \'double\' for input \'"

    .line 48
    .line 49
    const/16 v2, 0x27

    .line 50
    .line 51
    invoke-static {v2, p1, v0}, Lu48;->j(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 v0, 0x0

    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-static {p0, p1, v0, v2}, Lvr1;->k(Lvr1;Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method

.method public final b(Lop7;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p0, p1, Lop7;->a:Lwo1;

    .line 8
    .line 9
    iget-boolean p2, p1, Lop7;->f:Z

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lop7;->j(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Lwo1;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p2, Llm4;

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p2, v2}, Llm4;->c(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object p1, p1, Lop7;->e:Ldj4;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p0, p0, Lwo1;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Llm4;

    .line 57
    .line 58
    invoke-virtual {p0}, Llm4;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0, p1}, Lbb9;->b(Ljava/lang/String;Ljava/lang/Number;)Luj4;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    throw p0
.end method

.method public final d()Lp77;
    .locals 0

    .line 1
    sget-object p0, Ldo2;->b:La66;

    .line 2
    .line 3
    return-object p0
.end method
