.class public final Lfj7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# instance fields
.field public final a:Lsx;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:Z

.field public e:Z


# direct methods
.method public synthetic constructor <init>(Lsx;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 21
    invoke-direct/range {v0 .. v5}, Lfj7;-><init>(Lsx;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public constructor <init>(Lsx;Ljava/lang/String;IZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lfj7;->a:Lsx;

    .line 11
    .line 12
    iput-object p2, p0, Lfj7;->b:Ljava/lang/String;

    .line 13
    .line 14
    iput p3, p0, Lfj7;->c:I

    .line 15
    .line 16
    iput-boolean p4, p0, Lfj7;->d:Z

    .line 17
    .line 18
    iput-boolean p5, p0, Lfj7;->e:Z

    .line 19
    .line 20
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
    instance-of v1, p1, Lfj7;

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
    check-cast p1, Lfj7;

    .line 12
    .line 13
    iget-object v1, p0, Lfj7;->a:Lsx;

    .line 14
    .line 15
    iget-object v3, p1, Lfj7;->a:Lsx;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lfj7;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lfj7;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lfj7;->c:I

    .line 32
    .line 33
    iget v3, p1, Lfj7;->c:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-boolean v1, p0, Lfj7;->d:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Lfj7;->d:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-boolean p0, p0, Lfj7;->e:Z

    .line 46
    .line 47
    iget-boolean p1, p1, Lfj7;->e:Z

    .line 48
    .line 49
    if-eq p0, p1, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    return v0
.end method

.method public final getCopy()Ljl0;
    .locals 6

    .line 1
    iget-boolean v4, p0, Lfj7;->d:Z

    .line 2
    .line 3
    iget-boolean v5, p0, Lfj7;->e:Z

    .line 4
    .line 5
    iget-object v1, p0, Lfj7;->a:Lsx;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lfj7;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lfj7;

    .line 16
    .line 17
    iget v3, p0, Lfj7;->c:I

    .line 18
    .line 19
    invoke-direct/range {v0 .. v5}, Lfj7;-><init>(Lsx;Ljava/lang/String;IZZ)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfj7;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lfj7;->a:Lsx;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lfj7;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lfj7;->c:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-boolean v2, p0, Lfj7;->d:Z

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-boolean p0, p0, Lfj7;->e:Z

    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    add-int/2addr p0, v0

    .line 35
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lfj7;->d:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lfj7;->e:Z

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "SortItem(mode="

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lfj7;->a:Lsx;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, ", title="

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lfj7;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", iconRes="

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget p0, p0, Lfj7;->c:I

    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ", isChecked="

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, ", isAscending="

    .line 46
    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, ")"

    .line 51
    .line 52
    invoke-static {v2, v1, p0}, Ldj7;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
