.class public final Lqv1$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqv1;
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

    .line 99
    invoke-virtual {p0, p1}, Lqv1$b;->createFromParcel(Landroid/os/Parcel;)Lqv1;

    move-result-object p0

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lqv1;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 15
    .line 16
    .line 17
    move-result-wide v5

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    new-instance v11, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const/4 v12, 0x0

    .line 40
    move v13, v12

    .line 41
    :goto_0
    if-eq v13, v10, :cond_0

    .line 42
    .line 43
    sget-object v14, Lki7;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    .line 45
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v14

    .line 49
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/lit8 v13, v13, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    move-object v13, v11

    .line 60
    new-instance v11, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    :goto_1
    if-eq v12, v10, :cond_1

    .line 66
    .line 67
    sget-object v14, Lwg5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    .line 69
    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v12, v12, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 80
    .line 81
    .line 82
    move-result-wide v14

    .line 83
    move-object v10, v13

    .line 84
    move-wide v12, v14

    .line 85
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    new-instance v0, Lqv1;

    .line 94
    .line 95
    invoke-direct/range {v0 .. v15}, Lqv1;-><init>(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lqv1$b;->newArray(I)[Lqv1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final newArray(I)[Lqv1;
    .locals 0

    .line 6
    new-array p0, p1, [Lqv1;

    return-object p0
.end method
