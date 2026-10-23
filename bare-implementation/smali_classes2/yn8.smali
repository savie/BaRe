.class public final Lyn8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljl0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lyn8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lq63;

.field public final b:J

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final k:Z

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmk;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lmk;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lyn8;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lq63;JJLjava/lang/String;I)V
    .locals 11

    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    :goto_0
    and-int/lit8 v0, p7, 0x40

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    move v10, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 38
    invoke-direct/range {v1 .. v10}, Lyn8;-><init>(Lq63;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lq63;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
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
    iput-object p1, p0, Lyn8;->a:Lq63;

    .line 8
    .line 9
    iput-wide p2, p0, Lyn8;->b:J

    .line 10
    .line 11
    iput-wide p4, p0, Lyn8;->c:J

    .line 12
    .line 13
    iput-object p6, p0, Lyn8;->d:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p7, p0, Lyn8;->e:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p8, p0, Lyn8;->f:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean p9, p0, Lyn8;->k:Z

    .line 20
    .line 21
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 p2, 0x2

    .line 30
    if-ge p1, p2, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    iput-boolean p1, p0, Lyn8;->n:Z

    .line 36
    .line 37
    return-void
.end method

.method public static c(Lyn8;I)Lyn8;
    .locals 10

    .line 1
    iget-object v1, p0, Lyn8;->a:Lq63;

    .line 2
    .line 3
    iget-wide v2, p0, Lyn8;->b:J

    .line 4
    .line 5
    iget-wide v4, p0, Lyn8;->c:J

    .line 6
    .line 7
    iget-object v6, p0, Lyn8;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v7, p0, Lyn8;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v8, p0, Lyn8;->f:Ljava/lang/String;

    .line 12
    .line 13
    and-int/lit8 p1, p1, 0x40

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-boolean p1, p0, Lyn8;->k:Z

    .line 18
    .line 19
    :goto_0
    move v9, p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lyn8;

    .line 30
    .line 31
    invoke-direct/range {v0 .. v9}, Lyn8;-><init>(Lq63;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lyn8;

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
    check-cast p1, Lyn8;

    .line 12
    .line 13
    iget-object v1, p0, Lyn8;->a:Lq63;

    .line 14
    .line 15
    iget-object v3, p1, Lyn8;->a:Lq63;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p0, Lyn8;->b:J

    .line 25
    .line 26
    iget-wide v5, p1, Lyn8;->b:J

    .line 27
    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-wide v3, p0, Lyn8;->c:J

    .line 34
    .line 35
    iget-wide v5, p1, Lyn8;->c:J

    .line 36
    .line 37
    cmp-long v1, v3, v5

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lyn8;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lyn8;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lyn8;->e:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lyn8;->e:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lyn8;->f:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lyn8;->f:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-boolean p0, p0, Lyn8;->k:Z

    .line 76
    .line 77
    iget-boolean p1, p1, Lyn8;->k:Z

    .line 78
    .line 79
    if-eq p0, p1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    return v0
.end method

.method public final getCopy()Ljl0;
    .locals 1

    .line 1
    const/16 v0, 0x7f

    .line 2
    .line 3
    invoke-static {p0, v0}, Lyn8;->c(Lyn8;I)Lyn8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lyn8;->a:Lq63;

    .line 2
    .line 3
    invoke-virtual {p0}, Lq63;->v()Ljava/lang/String;

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
    iget-object v0, p0, Lyn8;->a:Lq63;

    .line 2
    .line 3
    iget-object v0, v0, Lq63;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-wide v2, p0, Lyn8;->b:J

    .line 13
    .line 14
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-wide v2, p0, Lyn8;->c:J

    .line 19
    .line 20
    invoke-static {v2, v3, v0, v1}, Lxs1;->f(JII)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    iget-object v3, p0, Lyn8;->d:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    move v3, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    :goto_0
    add-int/2addr v0, v3

    .line 36
    mul-int/2addr v0, v1

    .line 37
    iget-object v3, p0, Lyn8;->e:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    move v3, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    :goto_1
    add-int/2addr v0, v3

    .line 48
    mul-int/2addr v0, v1

    .line 49
    iget-object v3, p0, Lyn8;->f:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :goto_2
    add-int/2addr v0, v2

    .line 59
    mul-int/2addr v0, v1

    .line 60
    iget-boolean p0, p0, Lyn8;->k:Z

    .line 61
    .line 62
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    add-int/2addr p0, v0

    .line 67
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Wall(localBackupFile="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lyn8;->a:Lq63;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", modifiedTime="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lyn8;->b:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", fileSize="

    .line 24
    .line 25
    const-string v2, ", name="

    .line 26
    .line 27
    iget-wide v3, p0, Lyn8;->c:J

    .line 28
    .line 29
    invoke-static {v0, v1, v3, v4, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, ", driveId="

    .line 33
    .line 34
    const-string v2, ", thumbnailLink="

    .line 35
    .line 36
    iget-object v3, p0, Lyn8;->d:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, p0, Lyn8;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lyn8;->f:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", isDownloaded="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-boolean p0, p0, Lyn8;->k:Z

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, ")"

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lyn8;->a:Lq63;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Lyn8;->b:J

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lyn8;->c:J

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lyn8;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lyn8;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lyn8;->f:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p0, p0, Lyn8;->k:Z

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
