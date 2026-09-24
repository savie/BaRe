.class public final Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup$b;->createFromParcel(Landroid/os/Parcel;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    move-result-object p0

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    .line 20
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 25
    .line 26
    invoke-direct {p0, v0, p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;-><init>(Ljava/lang/String;Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup$b;->newArray(I)[Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final newArray(I)[Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;
    .locals 0

    .line 6
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    return-object p0
.end method
