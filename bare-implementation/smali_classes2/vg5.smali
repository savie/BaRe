.class public final Lvg5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvg5$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvg5;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lvg5$a;

.field private static final ORDER_BY_ID:Ljava/lang/String; = "_id ASC"


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "address"
    .end annotation
.end field

.field private charset:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "charset"
    .end annotation
.end field

.field private contactId:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "contact_id"
    .end annotation
.end field

.field private msgId:Ljava/lang/Long;
    .annotation runtime Lzl1;
        value = "msg_id"
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation runtime Lzl1;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lvg5$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lvg5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lvg5;->Companion:Lvg5$a;

    .line 8
    .line 9
    new-instance v0, Lvg5$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lvg5$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lvg5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 37
    invoke-direct/range {v0 .. v7}, Lvg5;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lvg5;->msgId:Ljava/lang/Long;

    .line 33
    iput-object p2, p0, Lvg5;->contactId:Ljava/lang/Long;

    .line 34
    iput-object p3, p0, Lvg5;->address:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lvg5;->type:Ljava/lang/Integer;

    .line 36
    iput-object p5, p0, Lvg5;->charset:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 13
    .line 14
    if-eqz p7, :cond_2

    .line 15
    .line 16
    move-object p3, v0

    .line 17
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 18
    .line 19
    if-eqz p7, :cond_3

    .line 20
    .line 21
    move-object p4, v0

    .line 22
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 23
    .line 24
    if-eqz p6, :cond_4

    .line 25
    .line 26
    move-object p5, v0

    .line 27
    :cond_4
    invoke-direct/range {p0 .. p5}, Lvg5;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic copy$default(Lvg5;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lvg5;
    .locals 0

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lvg5;->msgId:Ljava/lang/Long;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lvg5;->contactId:Ljava/lang/Long;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 14
    .line 15
    if-eqz p7, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lvg5;->address:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 20
    .line 21
    if-eqz p7, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lvg5;->type:Ljava/lang/Integer;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 26
    .line 27
    if-eqz p6, :cond_4

    .line 28
    .line 29
    iget-object p5, p0, Lvg5;->charset:Ljava/lang/Integer;

    .line 30
    .line 31
    :cond_4
    move-object p6, p4

    .line 32
    move-object p7, p5

    .line 33
    move-object p4, p2

    .line 34
    move-object p5, p3

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    invoke-virtual/range {p2 .. p7}, Lvg5;->copy(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lvg5;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg5;->msgId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg5;->contactId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg5;->address:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg5;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg5;->charset:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lvg5;
    .locals 0

    .line 1
    new-instance p0, Lvg5;

    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lvg5;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lvg5;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lvg5;

    .line 12
    .line 13
    iget-object v1, p0, Lvg5;->msgId:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v3, p1, Lvg5;->msgId:Ljava/lang/Long;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lvg5;->contactId:Ljava/lang/Long;

    .line 25
    .line 26
    iget-object v3, p1, Lvg5;->contactId:Ljava/lang/Long;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lvg5;->address:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lvg5;->address:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lvg5;->type:Ljava/lang/Integer;

    .line 47
    .line 48
    iget-object v3, p1, Lvg5;->type:Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object p0, p0, Lvg5;->charset:Ljava/lang/Integer;

    .line 58
    .line 59
    iget-object p1, p1, Lvg5;->charset:Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg5;->address:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCharset()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg5;->charset:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContactId()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg5;->contactId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMsgId()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg5;->msgId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lvg5;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lvg5;->msgId:Ljava/lang/Long;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lvg5;->contactId:Ljava/lang/Long;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lvg5;->address:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lvg5;->type:Ljava/lang/Integer;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object p0, p0, Lvg5;->charset:Ljava/lang/Integer;

    .line 54
    .line 55
    if-nez p0, :cond_4

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_4
    add-int/2addr v0, v1

    .line 63
    return v0
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvg5;->address:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCharset(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvg5;->charset:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setContactId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvg5;->contactId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setMsgId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvg5;->msgId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvg5;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lvg5;->msgId:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v1, p0, Lvg5;->contactId:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, p0, Lvg5;->address:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lvg5;->type:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object p0, p0, Lvg5;->charset:Ljava/lang/Integer;

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v5, "MmsAddressItem(msgId="

    .line 14
    .line 15
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ", contactId="

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ", address="

    .line 30
    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", type="

    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", charset="

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lvg5;->msgId:Ljava/lang/Long;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p2, p0, Lvg5;->contactId:Ljava/lang/Long;

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p1, v0, p2}, Lfz5;->p(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    :goto_1
    iget-object p2, p0, Lvg5;->address:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lvg5;->type:Ljava/lang/Integer;

    .line 34
    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-static {p1, v0, p2}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    iget-object p0, p0, Lvg5;->charset:Ljava/lang/Integer;

    .line 45
    .line 46
    if-nez p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    invoke-static {p1, v0, p0}, Lfz5;->o(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
