.class public final Ly53;
.super Li5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly53;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyj0;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyj0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly53;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly53;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Ly53;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, Ly53;->c:J

    .line 9
    .line 10
    iput-boolean p5, p0, Ly53;->d:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Ly53;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ly53;

    .line 7
    .line 8
    iget-object v0, p0, Ly53;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p1, Ly53;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ly53;->n()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-virtual {p1}, Ly53;->n()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    cmp-long v0, v2, v4

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-boolean p0, p0, Ly53;->d:Z

    .line 31
    .line 32
    iget-boolean p1, p1, Ly53;->d:Z

    .line 33
    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly53;->n()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Ly53;->d:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p0, p0, Ly53;->a:Ljava/lang/String;

    .line 16
    .line 17
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final n()J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iget-wide v2, p0, Ly53;->c:J

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget p0, p0, Ly53;->b:I

    .line 10
    .line 11
    int-to-long v0, p0

    .line 12
    return-wide v0

    .line 13
    :cond_0
    return-wide v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lib;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lib;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    iget-object v2, p0, Ly53;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ly53;->n()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "version"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean p0, p0, Ly53;->d:Z

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v1, "is_fully_rolled_out"

    .line 33
    .line 34
    invoke-virtual {v0, p0, v1}, Lib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lib;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

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
    iget-object v1, p0, Ly53;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-static {p1, v0, v1}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Ly53;->b:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ly53;->n()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    invoke-static {p1, v4, v0}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1, v1}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 37
    .line 38
    .line 39
    iget-boolean p0, p0, Ly53;->d:Z

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
