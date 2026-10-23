.class public final Lsb8;
.super Ld80;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lsb8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyj0;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyj0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lsb8;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lsb8;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p2}, Lly8;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lsb8;->b:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "twitter.com"

    .line 2
    .line 3
    return-object p0
.end method

.method public final q()Ld80;
    .locals 2

    .line 1
    new-instance v0, Lsb8;

    .line 2
    .line 3
    iget-object v1, p0, Lsb8;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lsb8;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lsb8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
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
    iget-object v1, p0, Lsb8;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    iget-object p0, p0, Lsb8;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v0, p0}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
