.class public final Lorg/swiftapps/swiftbackup/home/schedule/data/b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/lang/CharSequence;

.field public final k:Z

.field public final n:Ljava/util/List;

.field public final p:Lz28;

.field public final q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/util/List;Lz28;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean p4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->d:Z

    .line 14
    .line 15
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->e:Ljava/lang/CharSequence;

    .line 16
    .line 17
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->f:Ljava/lang/CharSequence;

    .line 18
    .line 19
    iput-boolean p7, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->k:Z

    .line 20
    .line 21
    iput-object p8, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->n:Ljava/util/List;

    .line 22
    .line 23
    iput-object p9, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->p:Lz28;

    .line 24
    .line 25
    iget-object p1, p9, Lz28;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 28
    .line 29
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->b:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->d:Z

    .line 45
    .line 46
    iget-boolean v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->d:Z

    .line 47
    .line 48
    if-eq v0, v1, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->e:Ljava/lang/CharSequence;

    .line 52
    .line 53
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->e:Ljava/lang/CharSequence;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->f:Ljava/lang/CharSequence;

    .line 63
    .line 64
    iget-object v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->f:Ljava/lang/CharSequence;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_7

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_7
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->k:Z

    .line 74
    .line 75
    iget-boolean v1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->k:Z

    .line 76
    .line 77
    if-eq v0, v1, :cond_8

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_8
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->n:Ljava/util/List;

    .line 81
    .line 82
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->n:Ljava/util/List;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_9

    .line 89
    .line 90
    :goto_0
    const/4 p0, 0x0

    .line 91
    return p0

    .line 92
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 93
    return p0
.end method

.method public final getCopy()Ljl0;
    .locals 10

    .line 1
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 7
    .line 8
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget-boolean v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->d:Z

    .line 13
    .line 14
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->e:Ljava/lang/CharSequence;

    .line 15
    .line 16
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->f:Ljava/lang/CharSequence;

    .line 17
    .line 18
    iget-boolean v7, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->k:Z

    .line 19
    .line 20
    iget-object v8, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->n:Ljava/util/List;

    .line 21
    .line 22
    iget-object v9, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->p:Lz28;

    .line 23
    .line 24
    invoke-direct/range {v0 .. v9}, Lorg/swiftapps/swiftbackup/home/schedule/data/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/util/List;Lz28;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->b:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    :goto_0
    add-int/2addr v0, v3

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->c:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    move v3, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    :goto_1
    add-int/2addr v0, v3

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-boolean v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->d:Z

    .line 36
    .line 37
    invoke-static {v0, v1, v3}, Lfz5;->h(IIZ)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->e:Ljava/lang/CharSequence;

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    move v3, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    :goto_2
    add-int/2addr v0, v3

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->f:Ljava/lang/CharSequence;

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :goto_3
    add-int/2addr v0, v2

    .line 63
    mul-int/2addr v0, v1

    .line 64
    iget-boolean v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->k:Z

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->n:Ljava/util/List;

    .line 71
    .line 72
    invoke-static {p0, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", cardSubtitle="

    .line 2
    .line 3
    const-string v1, ", toggleButtonTitle="

    .line 4
    .line 5
    const-string v2, "ScheduleCardItem(cardTitle="

    .line 6
    .line 7
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", isEnabled="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->d:Z

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", nextRunText="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->e:Ljava/lang/CharSequence;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", lastRunText="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->f:Ljava/lang/CharSequence;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", hasLastRunError="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-boolean v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->k:Z

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", schedulePropItems="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->n:Ljava/util/List;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", _s="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->p:Lz28;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p0, ")"

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method
