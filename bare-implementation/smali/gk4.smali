.class public abstract Lgk4;
.super Lcv3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final y:[I


# instance fields
.field public final n:Lmp7;

.field public p:[I

.field public q:I

.field public r:Lz77;

.field public t:Z

.field public x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, La51;->f:[I

    .line 2
    .line 3
    sput-object v0, Lgk4;->y:[I

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(ILc84;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcv3;-><init>(ILc84;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lgk4;->y:[I

    .line 5
    .line 6
    iput-object v0, p0, Lgk4;->p:[I

    .line 7
    .line 8
    sget-object v0, Lwj4;->r:Lz77;

    .line 9
    .line 10
    iput-object v0, p0, Lgk4;->r:Lz77;

    .line 11
    .line 12
    iget-object p2, p2, Lc84;->d:Lmp7;

    .line 13
    .line 14
    iput-object p2, p0, Lgk4;->n:Lmp7;

    .line 15
    .line 16
    sget-object p2, Lek4;->n:Lek4;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lek4;->a(I)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const/16 p2, 0x7f

    .line 25
    .line 26
    iput p2, p0, Lgk4;->q:I

    .line 27
    .line 28
    :cond_0
    sget-object p2, Lek4;->x:Lek4;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lek4;->a(I)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iput-boolean p2, p0, Lgk4;->x:Z

    .line 35
    .line 36
    sget-object p2, Lek4;->f:Lek4;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lek4;->a(I)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    xor-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    iput-boolean p1, p0, Lgk4;->t:Z

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final m0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcv3;->e:Lv08;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv08;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", expecting field name (context: "

    .line 8
    .line 9
    const-string v2, ")"

    .line 10
    .line 11
    const-string v3, "Can not "

    .line 12
    .line 13
    invoke-static {v3, p1, v1, v0, v2}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lfk4;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
.end method

.method public final r0(Lek4;)Lgk4;
    .locals 3

    .line 1
    iget v0, p1, Lek4;->b:I

    .line 2
    .line 3
    iget v1, p0, Lcv3;->b:I

    .line 4
    .line 5
    not-int v2, v0

    .line 6
    and-int/2addr v1, v2

    .line 7
    iput v1, p0, Lcv3;->b:I

    .line 8
    .line 9
    sget v1, Lcv3;->k:I

    .line 10
    .line 11
    and-int/2addr v0, v1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    sget-object v0, Lek4;->p:Lek4;

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    iput-boolean v1, p0, Lcv3;->d:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lek4;->n:Lek4;

    .line 23
    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    iput v1, p0, Lgk4;->q:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lek4;->r:Lek4;

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcv3;->e:Lv08;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iput-object v2, v0, Lv08;->h:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v0, p0, Lcv3;->e:Lv08;

    .line 39
    .line 40
    :cond_2
    :goto_0
    sget-object v0, Lek4;->f:Lek4;

    .line 41
    .line 42
    if-ne p1, v0, :cond_3

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lgk4;->t:Z

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    sget-object v0, Lek4;->x:Lek4;

    .line 49
    .line 50
    if-ne p1, v0, :cond_4

    .line 51
    .line 52
    iput-boolean v1, p0, Lgk4;->x:Z

    .line 53
    .line 54
    :cond_4
    return-object p0
.end method
