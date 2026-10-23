.class public final Llk3;
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
            "Llk3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final k:I

.field public final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb90;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lb90;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Llk3;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIZII)V
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
    iput-object p1, p0, Llk3;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput p2, p0, Llk3;->b:I

    .line 10
    .line 11
    iput-object p3, p0, Llk3;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, p0, Llk3;->d:I

    .line 14
    .line 15
    iput p5, p0, Llk3;->e:I

    .line 16
    .line 17
    iput-boolean p6, p0, Llk3;->f:Z

    .line 18
    .line 19
    iput p7, p0, Llk3;->k:I

    .line 20
    .line 21
    iput p8, p0, Llk3;->n:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llk3;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Delete backups"

    .line 6
    .line 7
    iget-object p0, p0, Llk3;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "New folder setup"

    .line 16
    .line 17
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string v0, "Copy folder setups"

    .line 24
    .line 25
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

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
    instance-of v1, p1, Llk3;

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
    check-cast p1, Llk3;

    .line 12
    .line 13
    iget-object v1, p0, Llk3;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Llk3;->a:Ljava/lang/String;

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
    iget v1, p0, Llk3;->b:I

    .line 25
    .line 26
    iget v3, p1, Llk3;->b:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Llk3;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Llk3;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget v1, p0, Llk3;->d:I

    .line 43
    .line 44
    iget v3, p1, Llk3;->d:I

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget v1, p0, Llk3;->e:I

    .line 50
    .line 51
    iget v3, p1, Llk3;->e:I

    .line 52
    .line 53
    if-eq v1, v3, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-boolean v1, p0, Llk3;->f:Z

    .line 57
    .line 58
    iget-boolean v3, p1, Llk3;->f:Z

    .line 59
    .line 60
    if-eq v1, v3, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    iget v1, p0, Llk3;->k:I

    .line 64
    .line 65
    iget v3, p1, Llk3;->k:I

    .line 66
    .line 67
    if-eq v1, v3, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    iget p0, p0, Llk3;->n:I

    .line 71
    .line 72
    iget p1, p1, Llk3;->n:I

    .line 73
    .line 74
    if-eq p0, p1, :cond_9

    .line 75
    .line 76
    return v2

    .line 77
    :cond_9
    return v0
.end method

.method public final getCopy()Ljl0;
    .locals 9

    .line 1
    iget-object v1, p0, Llk3;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Llk3;

    .line 7
    .line 8
    iget v2, p0, Llk3;->b:I

    .line 9
    .line 10
    iget-object v3, p0, Llk3;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget v4, p0, Llk3;->d:I

    .line 13
    .line 14
    iget v5, p0, Llk3;->e:I

    .line 15
    .line 16
    iget-boolean v6, p0, Llk3;->f:Z

    .line 17
    .line 18
    iget v7, p0, Llk3;->k:I

    .line 19
    .line 20
    iget v8, p0, Llk3;->n:I

    .line 21
    .line 22
    invoke-direct/range {v0 .. v8}, Llk3;-><init>(Ljava/lang/String;ILjava/lang/String;IIZII)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llk3;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Llk3;->a:Ljava/lang/String;

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
    iget v2, p0, Llk3;->b:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Llk3;->c:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    :goto_0
    add-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget v2, p0, Llk3;->d:I

    .line 29
    .line 30
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v2, p0, Llk3;->e:I

    .line 35
    .line 36
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-boolean v2, p0, Llk3;->f:Z

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget v2, p0, Llk3;->k:I

    .line 47
    .line 48
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget p0, p0, Llk3;->n:I

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    add-int/2addr p0, v0

    .line 59
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FolderBatchActionItem(id=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Llk3;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', isCloudSection="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Llk3;->f:Z

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Llk3;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Llk3;->b:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Llk3;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Llk3;->d:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget p2, p0, Llk3;->e:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-boolean p2, p0, Llk3;->f:Z

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget p2, p0, Llk3;->k:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget p0, p0, Llk3;->n:I

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
