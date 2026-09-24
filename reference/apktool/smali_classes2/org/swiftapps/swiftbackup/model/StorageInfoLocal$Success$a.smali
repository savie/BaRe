.class public final Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success$a;->createFromParcel(Landroid/os/Parcel;)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    move-result-object p0

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 19
    .line 20
    .line 21
    move-result-wide v6

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    invoke-direct/range {v0 .. v8}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;-><init>(JJIJF)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success$a;->newArray(I)[Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final newArray(I)[Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;
    .locals 0

    .line 6
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    return-object p0
.end method
