.class public final Lb91;
.super Li5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb91;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm8;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lm8;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lb91;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lb91;->a:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x4f45

    .line 5
    .line 6
    invoke-static {p1, p2}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x4

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p1, v1, v0}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 13
    .line 14
    .line 15
    iget-boolean p0, p0, Lb91;->a:Z

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
