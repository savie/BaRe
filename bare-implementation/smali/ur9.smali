.class public final Lur9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/ComponentName;

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lur9;->a:Ljava/lang/String;

    iput-object v0, p0, Lur9;->b:Ljava/lang/String;

    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    iput-object p1, p0, Lur9;->c:Landroid/content/ComponentName;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lur9;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lur9;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "com.google.android.gms"

    .line 10
    .line 11
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lur9;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lur9;->c:Landroid/content/ComponentName;

    .line 18
    .line 19
    iput-boolean p2, p0, Lur9;->d:Z

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lur9;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lur9;

    .line 12
    .line 13
    iget-object v1, p0, Lur9;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lur9;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lur9;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Lur9;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lur9;->c:Landroid/content/ComponentName;

    .line 34
    .line 35
    iget-object v3, p1, Lur9;->c:Landroid/content/ComponentName;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-boolean p0, p0, Lur9;->d:Z

    .line 44
    .line 45
    iget-boolean p1, p1, Lur9;->d:Z

    .line 46
    .line 47
    if-ne p0, p1, :cond_2

    .line 48
    .line 49
    return v0

    .line 50
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/16 v0, 0x1081

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lur9;->d:Z

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lur9;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lur9;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p0, p0, Lur9;->c:Landroid/content/ComponentName;

    .line 18
    .line 19
    filled-new-array {v2, v3, p0, v0, v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lur9;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lur9;->c:Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-static {p0}, Lly8;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    return-object v0
.end method
