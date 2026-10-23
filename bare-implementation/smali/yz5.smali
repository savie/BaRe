.class public final Lyz5;
.super Luh5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lyz5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgk;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lgk;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lyz5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
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
    iput-object p1, p0, Lyz5;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lyz5;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p3, p0, Lyz5;->c:J

    .line 12
    .line 13
    invoke-static {p5}, Lly8;->e(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p5, p0, Lyz5;->d:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public static u(Lorg/json/JSONObject;)Lyz5;
    .locals 8

    .line 1
    const-string v0, "enrollmentTimestamp"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "uid"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v1, "displayName"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    const-string v0, "phoneNumber"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    new-instance v2, Lyz5;

    .line 32
    .line 33
    invoke-direct/range {v2 .. v7}, Lyz5;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_0
    const-string p0, "An enrollment timestamp in seconds of UTC time since Unix epoch is required to build a PhoneMultiFactorInfo instance."

    .line 38
    .line 39
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method


# virtual methods
.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "phone"

    .line 2
    .line 3
    return-object p0
.end method

.method public final q()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "factorIdKey"

    .line 7
    .line 8
    const-string v2, "phone"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "uid"

    .line 14
    .line 15
    iget-object v2, p0, Lyz5;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "displayName"

    .line 21
    .line 22
    iget-object v2, p0, Lyz5;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "enrollmentTimestamp"

    .line 28
    .line 29
    iget-wide v2, p0, Lyz5;->c:J

    .line 30
    .line 31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v1, "phoneNumber"

    .line 39
    .line 40
    iget-object p0, p0, Lyz5;->d:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    const-string v0, "PhoneMultiFactorInfo"

    .line 48
    .line 49
    const-string v1, "Failed to jsonify this object"

    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    new-instance v0, Le2a;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0
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
    iget-object v1, p0, Lyz5;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    iget-object v1, p0, Lyz5;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-static {p1, v1, v0}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 23
    .line 24
    .line 25
    iget-wide v0, p0, Lyz5;->c:J

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    iget-object p0, p0, Lyz5;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p1, v0, p0}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
