.class public final Li80;
.super Li5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li80;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ld63;

.field public final b:Luu9;

.field public final c:Lih8;

.field public final d:Lx1a;

.field public final e:Ly39;

.field public final f:Lq49;

.field public final k:Lvw9;

.field public final n:Ls59;

.field public final p:Ld14;

.field public final q:La79;

.field public final r:Lc99;

.field public final t:Lh69;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmk;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lmk;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Li80;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ld63;Luu9;Lih8;Lx1a;Ly39;Lq49;Lvw9;Ls59;Ld14;La79;Lc99;Lh69;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li80;->a:Ld63;

    .line 5
    .line 6
    iput-object p3, p0, Li80;->c:Lih8;

    .line 7
    .line 8
    iput-object p2, p0, Li80;->b:Luu9;

    .line 9
    .line 10
    iput-object p4, p0, Li80;->d:Lx1a;

    .line 11
    .line 12
    iput-object p5, p0, Li80;->e:Ly39;

    .line 13
    .line 14
    iput-object p6, p0, Li80;->f:Lq49;

    .line 15
    .line 16
    iput-object p7, p0, Li80;->k:Lvw9;

    .line 17
    .line 18
    iput-object p8, p0, Li80;->n:Ls59;

    .line 19
    .line 20
    iput-object p9, p0, Li80;->p:Ld14;

    .line 21
    .line 22
    iput-object p10, p0, Li80;->q:La79;

    .line 23
    .line 24
    iput-object p11, p0, Li80;->r:Lc99;

    .line 25
    .line 26
    iput-object p12, p0, Li80;->t:Lh69;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Li80;

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
    check-cast p1, Li80;

    .line 8
    .line 9
    iget-object v0, p0, Li80;->a:Ld63;

    .line 10
    .line 11
    iget-object v2, p1, Li80;->a:Ld63;

    .line 12
    .line 13
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Li80;->b:Luu9;

    .line 20
    .line 21
    iget-object v2, p1, Li80;->b:Luu9;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Li80;->c:Lih8;

    .line 30
    .line 31
    iget-object v2, p1, Li80;->c:Lih8;

    .line 32
    .line 33
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Li80;->d:Lx1a;

    .line 40
    .line 41
    iget-object v2, p1, Li80;->d:Lx1a;

    .line 42
    .line 43
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Li80;->e:Ly39;

    .line 50
    .line 51
    iget-object v2, p1, Li80;->e:Ly39;

    .line 52
    .line 53
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Li80;->f:Lq49;

    .line 60
    .line 61
    iget-object v2, p1, Li80;->f:Lq49;

    .line 62
    .line 63
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Li80;->k:Lvw9;

    .line 70
    .line 71
    iget-object v2, p1, Li80;->k:Lvw9;

    .line 72
    .line 73
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Li80;->n:Ls59;

    .line 80
    .line 81
    iget-object v2, p1, Li80;->n:Ls59;

    .line 82
    .line 83
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Li80;->p:Ld14;

    .line 90
    .line 91
    iget-object v2, p1, Li80;->p:Ld14;

    .line 92
    .line 93
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    iget-object v0, p0, Li80;->q:La79;

    .line 100
    .line 101
    iget-object v2, p1, Li80;->q:La79;

    .line 102
    .line 103
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    iget-object v0, p0, Li80;->r:Lc99;

    .line 110
    .line 111
    iget-object v2, p1, Li80;->r:Lc99;

    .line 112
    .line 113
    invoke-static {v0, v2}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    .line 119
    iget-object p0, p0, Li80;->t:Lh69;

    .line 120
    .line 121
    iget-object p1, p1, Li80;->t:Lh69;

    .line 122
    .line 123
    invoke-static {p0, p1}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-eqz p0, :cond_1

    .line 128
    .line 129
    const/4 p0, 0x1

    .line 130
    return p0

    .line 131
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget-object v10, p0, Li80;->r:Lc99;

    .line 2
    .line 3
    iget-object v11, p0, Li80;->t:Lh69;

    .line 4
    .line 5
    iget-object v0, p0, Li80;->a:Ld63;

    .line 6
    .line 7
    iget-object v1, p0, Li80;->b:Luu9;

    .line 8
    .line 9
    iget-object v2, p0, Li80;->c:Lih8;

    .line 10
    .line 11
    iget-object v3, p0, Li80;->d:Lx1a;

    .line 12
    .line 13
    iget-object v4, p0, Li80;->e:Ly39;

    .line 14
    .line 15
    iget-object v5, p0, Li80;->f:Lq49;

    .line 16
    .line 17
    iget-object v6, p0, Li80;->k:Lvw9;

    .line 18
    .line 19
    iget-object v7, p0, Li80;->n:Ls59;

    .line 20
    .line 21
    iget-object v8, p0, Li80;->p:Ld14;

    .line 22
    .line 23
    iget-object v9, p0, Li80;->q:La79;

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Li80;->a:Ld63;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Li80;->b:Luu9;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Li80;->c:Lih8;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Li80;->d:Lx1a;

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Li80;->e:Ly39;

    .line 26
    .line 27
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Li80;->f:Lq49;

    .line 32
    .line 33
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Li80;->k:Lvw9;

    .line 38
    .line 39
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v7, p0, Li80;->n:Ls59;

    .line 44
    .line 45
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v8, p0, Li80;->p:Ld14;

    .line 50
    .line 51
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    iget-object v9, p0, Li80;->q:La79;

    .line 56
    .line 57
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iget-object p0, p0, Li80;->r:Lc99;

    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v10, ", \n cableAuthenticationExtension="

    .line 68
    .line 69
    const-string v11, ", \n userVerificationMethodExtension="

    .line 70
    .line 71
    const-string v12, "AuthenticationExtensions{\n fidoAppIdExtension="

    .line 72
    .line 73
    invoke-static {v12, v0, v10, v1, v11}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, ", \n googleMultiAssertionExtension="

    .line 78
    .line 79
    const-string v10, ", \n googleSessionIdExtension="

    .line 80
    .line 81
    invoke-static {v0, v2, v1, v3, v10}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v1, ", \n googleSilentVerificationExtension="

    .line 85
    .line 86
    const-string v2, ", \n devicePublicKeyExtension="

    .line 87
    .line 88
    invoke-static {v0, v4, v1, v5, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, ", \n googleTunnelServerIdExtension="

    .line 92
    .line 93
    const-string v2, ", \n googleThirdPartyPaymentExtension="

    .line 94
    .line 95
    invoke-static {v0, v6, v1, v7, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v1, ", \n prfExtension="

    .line 99
    .line 100
    const-string v2, ", \n simpleTransactionAuthorizationExtension="

    .line 101
    .line 102
    invoke-static {v0, v8, v1, v9, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "}"

    .line 106
    .line 107
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

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
    iget-object v2, p0, Li80;->a:Ld63;

    .line 9
    .line 10
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    iget-object v2, p0, Li80;->b:Luu9;

    .line 15
    .line 16
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    iget-object v2, p0, Li80;->c:Lih8;

    .line 21
    .line 22
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    iget-object v2, p0, Li80;->d:Lx1a;

    .line 27
    .line 28
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    iget-object v2, p0, Li80;->e:Ly39;

    .line 33
    .line 34
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x7

    .line 38
    iget-object v2, p0, Li80;->f:Lq49;

    .line 39
    .line 40
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    iget-object v2, p0, Li80;->k:Lvw9;

    .line 46
    .line 47
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x9

    .line 51
    .line 52
    iget-object v2, p0, Li80;->n:Ls59;

    .line 53
    .line 54
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    iget-object v2, p0, Li80;->p:Ld14;

    .line 60
    .line 61
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 62
    .line 63
    .line 64
    const/16 v1, 0xb

    .line 65
    .line 66
    iget-object v2, p0, Li80;->q:La79;

    .line 67
    .line 68
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 69
    .line 70
    .line 71
    const/16 v1, 0xc

    .line 72
    .line 73
    iget-object v2, p0, Li80;->r:Lc99;

    .line 74
    .line 75
    invoke-static {p1, v1, v2, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 76
    .line 77
    .line 78
    const/16 v1, 0xd

    .line 79
    .line 80
    iget-object p0, p0, Li80;->t:Lh69;

    .line 81
    .line 82
    invoke-static {p1, v1, p0, p2}, Lyc9;->v0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v0}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
