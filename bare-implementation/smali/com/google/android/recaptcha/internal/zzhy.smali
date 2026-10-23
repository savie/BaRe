.class public final Lcom/google/android/recaptcha/internal/zzhy;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private zza:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lov2;->a:Lov2;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzhy;->zza:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza([J)J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzhy;->zza:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1}, Lx50;->y0([J)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    check-cast p1, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    xor-long/2addr v0, v2

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide p0

    .line 59
    return-wide p0

    .line 60
    :cond_1
    const-string p0, "Empty collection can\'t be reduced."

    .line 61
    .line 62
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 p0, 0x0

    .line 66
    .line 67
    return-wide p0
.end method

.method public final zzb([J)V
    .locals 0

    .line 1
    invoke-static {p1}, Lx50;->y0([J)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzhy;->zza:Ljava/util/List;

    .line 6
    .line 7
    return-void
.end method
