.class public final Lef;
.super Li5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lef;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lef;


# instance fields
.field public final a:Lqn1;

.field public final b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lr39;->b:Lr39;

    .line 2
    .line 3
    sput-object v0, Lef;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    .line 5
    new-instance v0, Lef;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Lef;-><init>(Lqn1;Z)V

    .line 10
    .line 11
    .line 12
    iput-boolean v2, v0, Lef;->c:Z

    .line 13
    .line 14
    sput-object v0, Lef;->d:Lef;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lqn1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lef;->a:Lqn1;

    .line 5
    .line 6
    iput-boolean p2, p0, Lef;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lef;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lef;

    .line 7
    .line 8
    iget-object v0, p0, Lef;->a:Lqn1;

    .line 9
    .line 10
    iget-object v1, p1, Lef;->a:Lqn1;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lef;->c:Z

    .line 19
    .line 20
    iget-boolean v1, p1, Lef;->c:Z

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-boolean p0, p0, Lef;->b:Z

    .line 25
    .line 26
    iget-boolean p1, p1, Lef;->b:Z

    .line 27
    .line 28
    if-ne p0, p1, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lef;->c:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lef;->b:Z

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p0, p0, Lef;->a:Lqn1;

    .line 14
    .line 15
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lef;->a:Lqn1;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "ApiMetadata(complianceOptions="

    .line 19
    .line 20
    const-string v2, ")"

    .line 21
    .line 22
    invoke-static {v1, v0, p0, v2}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lef;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    add-int/lit8 p0, p0, -0x4

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/lit8 p0, p0, -0x4

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataSize(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const v0, -0xc2a5d3a

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x4f45

    .line 31
    .line 32
    invoke-static {p1, v0}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    iget-object v2, p0, Lef;->a:Lqn1;

    .line 38
    .line 39
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 40
    .line 41
    .line 42
    const/4 p2, 0x4

    .line 43
    const/4 v1, 0x2

    .line 44
    invoke-static {p1, v1, p2}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 45
    .line 46
    .line 47
    iget-boolean p0, p0, Lef;->b:Z

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
