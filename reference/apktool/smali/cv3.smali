.class public abstract Lcv3;
.super Lfk4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final k:I


# instance fields
.field public b:I

.field public final c:Lc84;

.field public d:Z

.field public e:Lv08;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lek4;->p:Lek4;

    .line 2
    .line 3
    iget v0, v0, Lek4;->b:I

    .line 4
    .line 5
    sget-object v1, Lek4;->n:Lek4;

    .line 6
    .line 7
    iget v1, v1, Lek4;->b:I

    .line 8
    .line 9
    or-int/2addr v0, v1

    .line 10
    sget-object v1, Lek4;->r:Lek4;

    .line 11
    .line 12
    iget v1, v1, Lek4;->b:I

    .line 13
    .line 14
    or-int/2addr v0, v1

    .line 15
    sput v0, Lcv3;->k:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(ILc84;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcv3;->b:I

    .line 5
    .line 6
    iput-object p2, p0, Lcv3;->c:Lc84;

    .line 7
    .line 8
    sget-object p2, Lek4;->r:Lek4;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lek4;->a(I)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Lf41;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lf41;-><init>(Lcv3;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p2, v0

    .line 24
    :goto_0
    new-instance v1, Lv08;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, v2, v0, p2}, Lv08;-><init>(ILv08;Lf41;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcv3;->e:Lv08;

    .line 31
    .line 32
    sget-object p2, Lek4;->p:Lek4;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lek4;->a(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput-boolean p1, p0, Lcv3;->d:Z

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcv3;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcv3;->c:Lc84;

    .line 6
    .line 7
    invoke-virtual {v0}, Lc84;->close()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcv3;->f:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcv3;->e:Lv08;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lv08;->j:Ljava/lang/Object;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final h(Lek4;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcv3;->b:I

    .line 2
    .line 3
    iget p1, p1, Lek4;->b:I

    .line 4
    .line 5
    and-int/2addr p0, p1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final k0(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x270f

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lek4;->q:Lek4;

    .line 8
    .line 9
    iget v3, p0, Lcv3;->b:I

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Lek4;->a(I)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, -0x270f

    .line 22
    .line 23
    if-lt v2, v3, :cond_0

    .line 24
    .line 25
    if-gt v2, v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    filled-new-array {p1, v1, v1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]"

    .line 41
    .line 42
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lfk4;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    throw p0

    .line 51
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public abstract l0(Ljava/lang/String;)V
.end method
