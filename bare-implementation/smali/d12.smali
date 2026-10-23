.class public final Ld12;
.super Li5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ld12;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/app/PendingIntent;

.field public final b:Lj12;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Leq1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Leq1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ld12;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Lj12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld12;->a:Landroid/app/PendingIntent;

    .line 5
    .line 6
    iput-object p2, p0, Ld12;->b:Lj12;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "pendingIntent or createCredentialResponse must be specified."

    .line 14
    .line 15
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x4f45

    .line 5
    .line 6
    invoke-static {p1, v0}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object v2, p0, Ld12;->a:Landroid/app/PendingIntent;

    .line 12
    .line 13
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    iget-object p0, p0, Ld12;->b:Lj12;

    .line 18
    .line 19
    invoke-static {p1, v1, p0, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
