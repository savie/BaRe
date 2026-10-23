.class public final Lta6;
.super Ld80;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lta6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[B

.field public final b:Ljava/lang/Double;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/Integer;

.field public final f:Lf58;

.field public final k:Ljh8;

.field public final n:Li80;

.field public final p:Ljava/lang/Long;

.field public final q:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmk;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lmk;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lta6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>([BLjava/lang/Double;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Integer;Lf58;Ljava/lang/String;Li80;Ljava/lang/Long;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p11, p0, Lta6;->q:Landroid/os/ResultReceiver;

    .line 5
    .line 6
    const/4 p11, 0x0

    .line 7
    if-nez p10, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Lly8;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lta6;->a:[B

    .line 13
    .line 14
    iput-object p2, p0, Lta6;->b:Ljava/lang/Double;

    .line 15
    .line 16
    invoke-static {p3}, Lly8;->h(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lta6;->c:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p4, p0, Lta6;->d:Ljava/util/List;

    .line 22
    .line 23
    iput-object p5, p0, Lta6;->e:Ljava/lang/Integer;

    .line 24
    .line 25
    iput-object p6, p0, Lta6;->f:Lf58;

    .line 26
    .line 27
    iput-object p9, p0, Lta6;->p:Ljava/lang/Long;

    .line 28
    .line 29
    if-eqz p7, :cond_0

    .line 30
    .line 31
    :try_start_0
    invoke-static {p7}, Ljh8;->c(Ljava/lang/String;)Ljh8;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lta6;->k:Ljh8;
    :try_end_0
    .catch Ln99; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_0
    iput-object p11, p0, Lta6;->k:Ljh8;

    .line 46
    .line 47
    :goto_0
    iput-object p8, p0, Lta6;->n:Li80;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    sget-object p0, Lkn9;->b:Lkn9;

    .line 51
    .line 52
    iget-object p0, p0, Lkn9;->a:Lda9;

    .line 53
    .line 54
    iget-object p0, p0, Lda9;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Lnn9;

    .line 57
    .line 58
    sget-object p0, Lnn9;->a:Lke;

    .line 59
    .line 60
    invoke-virtual {p0}, Lke;->p()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    throw p11
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lta6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lta6;

    .line 8
    .line 9
    iget-object v0, p1, Lta6;->d:Ljava/util/List;

    .line 10
    .line 11
    iget-object v2, p0, Lta6;->a:[B

    .line 12
    .line 13
    iget-object v3, p1, Lta6;->a:[B

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    iget-object v2, p0, Lta6;->b:Ljava/lang/Double;

    .line 22
    .line 23
    iget-object v3, p1, Lta6;->b:Ljava/lang/Double;

    .line 24
    .line 25
    invoke-static {v2, v3}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    iget-object v2, p0, Lta6;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lta6;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2, v3}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    iget-object v2, p0, Lta6;->d:Ljava/util/List;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    :cond_1
    if-eqz v2, :cond_3

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lta6;->e:Ljava/lang/Integer;

    .line 64
    .line 65
    iget-object v2, p1, Lta6;->e:Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lta6;->f:Lf58;

    .line 74
    .line 75
    iget-object v2, p1, Lta6;->f:Lf58;

    .line 76
    .line 77
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Lta6;->k:Ljh8;

    .line 84
    .line 85
    iget-object v2, p1, Lta6;->k:Ljh8;

    .line 86
    .line 87
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lta6;->n:Li80;

    .line 94
    .line 95
    iget-object v2, p1, Lta6;->n:Li80;

    .line 96
    .line 97
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    iget-object p0, p0, Lta6;->p:Ljava/lang/Long;

    .line 104
    .line 105
    iget-object p1, p1, Lta6;->p:Ljava/lang/Long;

    .line 106
    .line 107
    invoke-static {p0, p1}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_3

    .line 112
    .line 113
    const/4 p0, 0x1

    .line 114
    return p0

    .line 115
    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 10

    .line 1
    iget-object v0, p0, Lta6;->a:[B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v8, p0, Lta6;->n:Li80;

    .line 12
    .line 13
    iget-object v9, p0, Lta6;->p:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v2, p0, Lta6;->b:Ljava/lang/Double;

    .line 16
    .line 17
    iget-object v3, p0, Lta6;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p0, Lta6;->d:Ljava/util/List;

    .line 20
    .line 21
    iget-object v5, p0, Lta6;->e:Ljava/lang/Integer;

    .line 22
    .line 23
    iget-object v6, p0, Lta6;->f:Lf58;

    .line 24
    .line 25
    iget-object v7, p0, Lta6;->k:Ljh8;

    .line 26
    .line 27
    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lta6;->a:[B

    .line 2
    .line 3
    invoke-static {v0}, Lcy0;->t([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lta6;->d:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lta6;->f:Lf58;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lta6;->k:Ljh8;

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lta6;->n:Li80;

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "PublicKeyCredentialRequestOptions{\n challenge="

    .line 32
    .line 33
    const-string v6, ", \n timeoutSeconds="

    .line 34
    .line 35
    invoke-static {v5, v0, v6}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v5, p0, Lta6;->b:Ljava/lang/Double;

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v5, ", \n rpId=\'"

    .line 45
    .line 46
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v5, "\', \n allowList="

    .line 50
    .line 51
    const-string v6, ", \n requestId="

    .line 52
    .line 53
    iget-object v7, p0, Lta6;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v7, v5, v1, v6}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lta6;->e:Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", \n tokenBinding="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", \n userVerification="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", \n authenticationExtensions="

    .line 77
    .line 78
    const-string v2, ", \n longRequestId="

    .line 79
    .line 80
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lta6;->p:Ljava/lang/Long;

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p0, "}"

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    iget-object v2, p0, Lta6;->a:[B

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Lyc9;->o0(Landroid/os/Parcel;I[B)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    iget-object v2, p0, Lta6;->b:Ljava/lang/Double;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x3

    .line 21
    invoke-static {p1, v3, v1}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    .line 30
    .line 31
    :goto_0
    const/4 v2, 0x4

    .line 32
    iget-object v3, p0, Lta6;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, v2, v3}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x5

    .line 38
    iget-object v3, p0, Lta6;->d:Ljava/util/List;

    .line 39
    .line 40
    invoke-static {p1, v2, v3}, Lyc9;->z0(Landroid/os/Parcel;ILjava/util/List;)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x6

    .line 44
    iget-object v3, p0, Lta6;->e:Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-static {p1, v2, v3}, Lyc9;->p0(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x7

    .line 50
    iget-object v3, p0, Lta6;->f:Lf58;

    .line 51
    .line 52
    invoke-static {p1, v2, v3, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lta6;->k:Ljh8;

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v2, v2, Ljh8;->a:Ljava/lang/String;

    .line 62
    .line 63
    :goto_1
    invoke-static {p1, v1, v2}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x9

    .line 67
    .line 68
    iget-object v2, p0, Lta6;->n:Li80;

    .line 69
    .line 70
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 71
    .line 72
    .line 73
    const/16 v1, 0xa

    .line 74
    .line 75
    iget-object v2, p0, Lta6;->p:Ljava/lang/Long;

    .line 76
    .line 77
    invoke-static {p1, v1, v2}, Lyc9;->s0(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 78
    .line 79
    .line 80
    const/16 v1, 0xc

    .line 81
    .line 82
    iget-object p0, p0, Lta6;->q:Landroid/os/ResultReceiver;

    .line 83
    .line 84
    invoke-static {p1, v1, p0, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
