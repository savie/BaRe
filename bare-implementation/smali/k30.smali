.class public final Lk30;
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
            "Lk30;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final k:I

.field public final n:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm8;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lm8;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lk30;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/Config;IIZII)V
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
    iput-object p1, p0, Lk30;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lk30;->b:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 13
    .line 14
    iput p3, p0, Lk30;->c:I

    .line 15
    .line 16
    iput p4, p0, Lk30;->d:I

    .line 17
    .line 18
    iput-boolean p5, p0, Lk30;->e:Z

    .line 19
    .line 20
    iput p6, p0, Lk30;->f:I

    .line 21
    .line 22
    iput p7, p0, Lk30;->k:I

    .line 23
    .line 24
    new-instance p1, Lsm;

    .line 25
    .line 26
    const/4 p2, 0x2

    .line 27
    invoke-direct {p1, p2}, Lsm;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lgv7;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lk30;->n:Lgv7;

    .line 36
    .line 37
    return-void
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
    instance-of v1, p1, Lk30;

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
    check-cast p1, Lk30;

    .line 12
    .line 13
    iget-object v1, p0, Lk30;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lk30;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lk30;->b:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 25
    .line 26
    iget-object v3, p1, Lk30;->b:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lk30;->c:I

    .line 36
    .line 37
    iget v3, p1, Lk30;->c:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget v1, p0, Lk30;->d:I

    .line 43
    .line 44
    iget v3, p1, Lk30;->d:I

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-boolean v1, p0, Lk30;->e:Z

    .line 50
    .line 51
    iget-boolean v3, p1, Lk30;->e:Z

    .line 52
    .line 53
    if-eq v1, v3, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget v1, p0, Lk30;->f:I

    .line 57
    .line 58
    iget v3, p1, Lk30;->f:I

    .line 59
    .line 60
    if-eq v1, v3, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    iget p0, p0, Lk30;->k:I

    .line 64
    .line 65
    iget p1, p1, Lk30;->k:I

    .line 66
    .line 67
    if-eq p0, p1, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    return v0
.end method

.method public final getCopy()Ljl0;
    .locals 8

    .line 1
    iget-object v1, p0, Lk30;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lk30;->b:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lk30;

    .line 12
    .line 13
    iget v3, p0, Lk30;->c:I

    .line 14
    .line 15
    iget v4, p0, Lk30;->d:I

    .line 16
    .line 17
    iget-boolean v5, p0, Lk30;->e:Z

    .line 18
    .line 19
    iget v6, p0, Lk30;->f:I

    .line 20
    .line 21
    iget v7, p0, Lk30;->k:I

    .line 22
    .line 23
    invoke-direct/range {v0 .. v7}, Lk30;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/Config;IIZII)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk30;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lk30;->a:Ljava/lang/String;

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
    iget-object v2, p0, Lk30;->b:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 11
    .line 12
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget v0, p0, Lk30;->c:I

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Leq3;->d(III)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v2, p0, Lk30;->d:I

    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-boolean v2, p0, Lk30;->e:Z

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v2, p0, Lk30;->f:I

    .line 37
    .line 38
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget p0, p0, Lk30;->k:I

    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    add-int/2addr p0, v0

    .line 49
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "AppsConfigRunItem(id=\'"

    .line 2
    .line 3
    const-string v1, "\')"

    .line 4
    .line 5
    iget-object p0, p0, Lk30;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lk30;->a:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lk30;->b:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lk30;->c:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Lk30;->d:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean p2, p0, Lk30;->e:Z

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lk30;->f:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget p0, p0, Lk30;->k:I

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
