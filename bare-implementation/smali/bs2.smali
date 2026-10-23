.class public final Lbs2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 26
    iput p1, p0, Lbs2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lau1;Lvz7;Lvq3;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lbs2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lau1;->c()Ljava/lang/annotation/Annotation;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lbs2;->b:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p1, p0, Lbs2;->c:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p3, p0, Lbs2;->d:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p2, p0, Lbs2;->e:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lj75;Ldi4;Lwj7;Ljava/util/Map;Lns0;)V
    .locals 0

    const/4 p5, 0x2

    iput p5, p0, Lbs2;->a:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lbs2;->b:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lbs2;->c:Ljava/lang/Object;

    .line 24
    iput-object p3, p0, Lbs2;->d:Ljava/lang/Object;

    .line 25
    iput-object p4, p0, Lbs2;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    iput p5, p0, Lbs2;->a:I

    iput-object p1, p0, Lbs2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lbs2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lbs2;->d:Ljava/lang/Object;

    iput-object p4, p0, Lbs2;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method


# virtual methods
.method public a(Lon5;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lon5;->e:Lon5;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lbs2;->b()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lbs2;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lwj7;

    .line 11
    .line 12
    const/16 p1, 0xa

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lwj7;->a(C)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object p0, p0, Lbs2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwj7;

    .line 4
    .line 5
    iget-object v0, p0, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    if-eq v1, v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lwj7;->a(C)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lbs2;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lvz7;

    .line 4
    .line 5
    invoke-interface {p0}, Luq4;->b()Lvb8;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Lvb8;->getType()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    move-object v0, p0

    .line 24
    :goto_0
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-class v3, Lno6;

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lno6;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-interface {v3}, Lno6;->name()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lbs2;->f(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v2}, Lz85;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lz85;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public d()Ls03;
    .locals 3

    .line 1
    iget-object v0, p0, Lbs2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvq3;

    .line 4
    .line 5
    iget-object p0, p0, Lbs2;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lau1;

    .line 8
    .line 9
    const-class v1, Lfy5;

    .line 10
    .line 11
    invoke-interface {p0, v1}, Lvb8;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lfy5;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {v1}, Lfy5;->value()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    new-instance v2, Lmy5;

    .line 28
    .line 29
    invoke-direct {v2, v1, p0, v0}, Lmy5;-><init>(Ljava/lang/String;Lvb8;Lvq3;)V

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_1
    new-instance p0, Lmv2;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lmv2;-><init>(Lvq3;)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lbs2;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvz7;

    .line 4
    .line 5
    invoke-interface {v0}, Luq4;->r()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0}, Luq4;->isInline()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Luq4;->d()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lbs2;->f(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object p0, p0, Lbs2;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lau1;

    .line 29
    .line 30
    invoke-interface {p0}, Lau1;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    return-object v1
.end method

.method public g()I
    .locals 0

    .line 1
    iget-object p0, p0, Lbs2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwj7;

    .line 4
    .line 5
    iget-object p0, p0, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public h(Lon5;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lbs2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lj75;

    .line 8
    .line 9
    iget-object v1, v0, Lj75;->k:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lky3;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lky3;->a(Ljava/lang/Class;)Lsj7;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lbs2;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ldi4;

    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Lsj7;->a(Lj75;Ldi4;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p0, p0, Lbs2;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lwj7;

    .line 30
    .line 31
    iget-object v0, p0, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {p0, p1, p2, v0}, Lwj7;->c(Lwj7;Ljava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public i(Lon5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbs2;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lp75;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p0, p1}, Lp75;->a(Lbs2;Lon5;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lbs2;->j(Lon5;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public j(Lon5;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lon5;->b:Lon5;

    .line 2
    .line 3
    :goto_0
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lon5;->e:Lon5;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lon5;->a(Lbs2;)V

    .line 8
    .line 9
    .line 10
    move-object p1, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method

.method public k()Lkg9;
    .locals 4

    .line 1
    iget-object v0, p0, Lbs2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Integer;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v2, p0, Lbs2;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lig9;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lbs2;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/lang/Integer;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lbs2;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    new-instance v1, Lkg9;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v2, p0, Lbs2;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object v3, p0, Lbs2;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget-object p0, p0, Lbs2;->e:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lig9;

    .line 51
    .line 52
    invoke-direct {v1, v0, v2, v3, p0}, Lkg9;-><init>(IIILig9;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_0
    const-string p0, "Tag size is not set"

    .line 57
    .line 58
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_1
    const-string p0, "IV size is not set"

    .line 63
    .line 64
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_2
    const-string p0, "Variant is not set"

    .line 69
    .line 70
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_3
    const-string p0, "Key size is not set"

    .line 75
    .line 76
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v1
.end method

.method public l()V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lbs2;->c:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    .line 25
    .line 26
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lbs2;->b:Ljava/lang/Object;

    .line 39
    .line 40
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lbs2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lbs2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lly8;->h(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Ly49;->a:Landroid/util/SparseArray;

    .line 19
    .line 20
    instance-of v2, v1, Lmf3;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast v1, Lmf3;

    .line 25
    .line 26
    iget-object v1, v1, Lmf3;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "INVALID_RECAPTCHA_TOKEN"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const/4 p1, 0x4

    .line 39
    const-string v1, "RecaptchaCallWrapper"

    .line 40
    .line 41
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "Invalid token - Refreshing Recaptcha Enterprise config and fetching new token for tenant "

    .line 50
    .line 51
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lbs2;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lyo1;

    .line 67
    .line 68
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    iget-object v2, p0, Lbs2;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Lcom/google/android/recaptcha/RecaptchaAction;

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1, v2}, Lyo1;->q(Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object p0, p0, Lbs2;->e:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Lzq8;

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lbs2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lbs2;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 14
    .line 15
    iget-object p0, p0, Lbs2;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lau1;

    .line 18
    .line 19
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "%s on %s"

    .line 24
    .line 25
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
