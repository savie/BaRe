.class public final Lax3;
.super Li5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lax3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:I

.field public final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll91;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ll91;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lax3;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lax3;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lax3;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lax3;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lax3;->d:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean p5, p0, Lax3;->e:Z

    .line 16
    .line 17
    iput p6, p0, Lax3;->f:I

    .line 18
    .line 19
    iput-object p7, p0, Lax3;->k:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lax3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lax3;

    .line 8
    .line 9
    iget-object v0, p0, Lax3;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lax3;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lax3;->d:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p1, Lax3;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lax3;->b:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p1, Lax3;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-boolean v0, p0, Lax3;->e:Z

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-boolean v2, p1, Lax3;->e:Z

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget v0, p0, Lax3;->f:I

    .line 58
    .line 59
    iget v2, p1, Lax3;->f:I

    .line 60
    .line 61
    if-ne v0, v2, :cond_1

    .line 62
    .line 63
    iget-object p0, p0, Lax3;->k:Ljava/util/List;

    .line 64
    .line 65
    iget-object p1, p1, Lax3;->k:Ljava/util/List;

    .line 66
    .line 67
    invoke-static {p0, p1}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_1

    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    return p0

    .line 75
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lax3;->e:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    iget v0, p0, Lax3;->f:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget-object v6, p0, Lax3;->k:Ljava/util/List;

    .line 14
    .line 15
    iget-object v1, p0, Lax3;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lax3;->b:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lax3;->d:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, p2}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    iget-object v1, p0, Lax3;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    iget-object v1, p0, Lax3;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    iget-object v1, p0, Lax3;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lax3;->d:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-static {p1, v1, v0}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x5

    .line 32
    invoke-static {p1, v0, v1}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lax3;->e:Z

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x6

    .line 41
    invoke-static {p1, v0, v1}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lax3;->f:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x7

    .line 50
    iget-object p0, p0, Lax3;->k:Ljava/util/List;

    .line 51
    .line 52
    invoke-static {p1, v0, p0}, Lyc9;->z0(Landroid/os/Parcel;ILjava/util/List;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
