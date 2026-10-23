.class public final Lh12;
.super Li5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lh12;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;

.field public final c:Landroid/os/Bundle;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu80;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lu80;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lh12;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lh12;->a:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Lh12;->b:Landroid/os/Bundle;

    .line 16
    .line 17
    iput-object p3, p0, Lh12;->c:Landroid/os/Bundle;

    .line 18
    .line 19
    iput-object p4, p0, Lh12;->d:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p5, p0, Lh12;->e:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p6, p0, Lh12;->f:Landroid/os/ResultReceiver;

    .line 24
    .line 25
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
    iget-object v2, p0, Lh12;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v1, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    iget-object v2, p0, Lh12;->b:Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-static {p1, v1, v2}, Lyc9;->n0(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    iget-object v2, p0, Lh12;->c:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-static {p1, v1, v2}, Lyc9;->n0(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    iget-object v2, p0, Lh12;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1, v1, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    iget-object v2, p0, Lh12;->e:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, v1, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x6

    .line 41
    iget-object p0, p0, Lh12;->f:Landroid/os/ResultReceiver;

    .line 42
    .line 43
    invoke-static {p1, v1, p0, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
