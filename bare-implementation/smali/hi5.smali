.class public final Lhi5;
.super Ls36;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhi5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu80;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lu80;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhi5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 26
    invoke-direct {p0, v0}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lhi5;->a:Ljava/util/HashSet;

    .line 14
    .line 15
    new-array v0, v0, [Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lhi5;->a:Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lhi5;->a:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lhi5;->a:Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    new-array p2, p2, [Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, [Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
