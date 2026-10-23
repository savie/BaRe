.class final Lcom/google/android/recaptcha/internal/zzot;
.super Lcom/google/android/recaptcha/internal/zzkr;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field private static final zza:[Ljava/lang/Object;

.field private static final zzb:Lcom/google/android/recaptcha/internal/zzot;


# instance fields
.field private zzc:[Ljava/lang/Object;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v1, Lcom/google/android/recaptcha/internal/zzot;->zza:[Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v2, Lcom/google/android/recaptcha/internal/zzot;

    .line 7
    .line 8
    invoke-direct {v2, v1, v0, v0}, Lcom/google/android/recaptcha/internal/zzot;-><init>([Ljava/lang/Object;IZ)V

    .line 9
    .line 10
    .line 11
    sput-object v2, Lcom/google/android/recaptcha/internal/zzot;->zzb:Lcom/google/android/recaptcha/internal/zzot;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzot;->zza:[Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/recaptcha/internal/zzot;-><init>([Ljava/lang/Object;IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;IZ)V
    .locals 0

    .line 9
    invoke-direct {p0, p3}, Lcom/google/android/recaptcha/internal/zzkr;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    return-void
.end method

.method public static zze()Lcom/google/android/recaptcha/internal/zzot;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzot;->zzb:Lcom/google/android/recaptcha/internal/zzot;

    .line 2
    .line 3
    return-object v0
.end method

.method private static zzg(I)I
    .locals 1

    .line 1
    mul-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    div-int/lit8 p0, p0, 0x2

    .line 4
    .line 5
    add-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final zzh(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 2
    .line 3
    const-string v0, "Index:"

    .line 4
    .line 5
    const-string v1, ", Size:"

    .line 6
    .line 7
    invoke-static {v0, p1, p0, v1}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private final zzi(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzot;->zzh(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzkr;->zza()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 7
    .line 8
    if-gt p1, v0, :cond_1

    .line 9
    .line 10
    add-int/lit8 v1, p1, 0x1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 13
    .line 14
    array-length v3, v2

    .line 15
    if-ge v0, v3, :cond_0

    .line 16
    .line 17
    sub-int/2addr v0, p1

    .line 18
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v3}, Lcom/google/android/recaptcha/internal/zzot;->zzg(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 35
    .line 36
    iget v3, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 37
    .line 38
    sub-int/2addr v3, p1

    .line 39
    invoke-static {v2, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 43
    .line 44
    :goto_0
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 45
    .line 46
    aput-object p2, v0, p1

    .line 47
    .line 48
    iget p1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 49
    .line 50
    add-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    iput p1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 53
    .line 54
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 55
    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzot;->zzh(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, La6;->d(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzkr;->zza()V

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 70
    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 71
    invoke-static {v1}, Lcom/google/android/recaptcha/internal/zzot;->zzg(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 72
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 73
    aput-object p1, v0, v1

    .line 74
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzot;->zzi(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object p0, p0, p1

    .line 7
    .line 8
    return-object p0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzkr;->zza()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzot;->zzi(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object v1, v0, p1

    .line 10
    .line 11
    iget v2, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 12
    .line 13
    add-int/lit8 v3, v2, -0x1

    .line 14
    .line 15
    if-ge p1, v3, :cond_0

    .line 16
    .line 17
    add-int/lit8 v3, p1, 0x1

    .line 18
    .line 19
    sub-int/2addr v2, p1

    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget p1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    iput p1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 30
    .line 31
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 36
    .line 37
    return-object v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzkr;->zza()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/recaptcha/internal/zzot;->zzi(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object v1, v0, p1

    .line 10
    .line 11
    aput-object p2, v0, p1

    .line 12
    .line 13
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 18
    .line 19
    return-object v1
.end method

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 2
    .line 3
    return p0
.end method

.method public final bridge synthetic zzd(I)Lcom/google/android/recaptcha/internal/zznk;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/google/android/recaptcha/internal/zzot;->zza:[Ljava/lang/Object;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzot;

    .line 17
    .line 18
    iget p0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzd:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/recaptcha/internal/zzot;-><init>([Ljava/lang/Object;IZ)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    invoke-static {}, Lc6;->b()V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final zzf(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :goto_0
    if-ge v0, p1, :cond_1

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzot;->zzg(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    const/16 v0, 0xa

    .line 26
    .line 27
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    new-array p1, p1, [Ljava/lang/Object;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzot;->zzc:[Ljava/lang/Object;

    .line 34
    .line 35
    return-void
.end method
