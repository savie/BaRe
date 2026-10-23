.class public final Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljl0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;
    }
.end annotation


# static fields
.field private static final ANDROID_13_SDK:I = 0x21

.field private static final ANDROID_17_SDK:I = 0x25

.field public static final ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final BLOCKED_TYPE:I = 0x6

.field public static final Companion:Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;

.field private static final INCLUDE_VOIP_CALLS_PARAM_KEY:Ljava/lang/String; = "include_voip_calls"

.field private static final INCLUDE_VOIP_CALLS_PARAM_VALUE:Ljava/lang/String; = "true"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final MISSED_TYPE:I = 0x3

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final REJECTED_TYPE:I = 0x5

.field private static final TELEPHONY_PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "com.android.phone/com.android.services.telephony.TelephonyConnectionService"

.field public static final VOICEMAIL_TYPE:I = 0x4


# instance fields
.field private countryIso:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "countryiso"
    .end annotation
.end field

.field private dataUsage:J
    .annotation runtime Lzl1;
        value = "data_usage"
    .end annotation
.end field

.field private date:J
    .annotation runtime Lzl1;
        value = "date"
    .end annotation
.end field

.field private duration:J
    .annotation runtime Lzl1;
        value = "duration"
    .end annotation
.end field

.field private features:I
    .annotation runtime Lzl1;
        value = "features"
    .end annotation
.end field

.field private formattedNumber:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "formatted_number"
    .end annotation
.end field

.field private geoCodedLocation:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "geocoded_location"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lzl1;
        value = "_id"
    .end annotation
.end field

.field private isRead:I
    .annotation runtime Lzl1;
        value = "is_read"
    .end annotation
.end field

.field private lookupUri:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "lookup_uri"
    .end annotation
.end field

.field private matchedNumber:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "matched_number"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "name"
    .end annotation
.end field

.field private newCall:I
    .annotation runtime Lzl1;
        value = "new"
    .end annotation
.end field

.field private normalizedNumber:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "normalized_number"
    .end annotation
.end field

.field private number:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "number"
    .end annotation
.end field

.field private numberPresentation:I
    .annotation runtime Lzl1;
        value = "presentation"
    .end annotation
.end field

.field private numberType:I
    .annotation runtime Lzl1;
        value = "numbertype"
    .end annotation
.end field

.field private phoneAccountComponentName:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "subscription_component_name"
    .end annotation
.end field

.field private phoneAccountId:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "subscription_id"
    .end annotation
.end field

.field private photoId:J
    .annotation runtime Lzl1;
        value = "photo_id"
    .end annotation
.end field

.field private photoUri:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "photo_uri"
    .end annotation
.end field

.field private randomId:Ljava/lang/String;

.field private sourceSimSlotIndex:Ljava/lang/Integer;

.field private type:I
    .annotation runtime Lzl1;
        value = "type"
    .end annotation
.end field

.field private voiceMailUri:Ljava/lang/String;
    .annotation runtime Lzl1;
        value = "voicemail_uri"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->Companion:Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 32

    .line 27
    const v30, 0xffffff

    const/16 v31, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v31}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;-><init>(JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->id:J

    .line 4
    iput p3, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->type:I

    .line 5
    iput p4, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->features:I

    .line 6
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->number:Ljava/lang/String;

    .line 7
    iput p6, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberPresentation:I

    .line 8
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->countryIso:Ljava/lang/String;

    .line 9
    iput-wide p8, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->date:J

    .line 10
    iput-wide p10, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->duration:J

    .line 11
    iput-wide p12, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->dataUsage:J

    .line 12
    iput p14, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->newCall:I

    .line 13
    iput-object p15, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->name:Ljava/lang/String;

    move/from16 p1, p16

    .line 14
    iput p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberType:I

    move-object/from16 p1, p17

    .line 15
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->voiceMailUri:Ljava/lang/String;

    move/from16 p1, p18

    .line 16
    iput p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->isRead:I

    move-object/from16 p1, p19

    .line 17
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->geoCodedLocation:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 18
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->lookupUri:Ljava/lang/String;

    move-object/from16 p1, p21

    .line 19
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->matchedNumber:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 20
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->normalizedNumber:Ljava/lang/String;

    move-wide/from16 p1, p23

    .line 21
    iput-wide p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoId:J

    move-object/from16 p1, p25

    .line 22
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoUri:Ljava/lang/String;

    move-object/from16 p1, p26

    .line 23
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->formattedNumber:Ljava/lang/String;

    move-object/from16 p1, p27

    .line 24
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    move-object/from16 p1, p28

    .line 25
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountId:Ljava/lang/String;

    move-object/from16 p1, p29

    .line 26
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->sourceSimSlotIndex:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 26

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move/from16 v1, p3

    :goto_1
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    move/from16 v7, p4

    :goto_2
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    move/from16 v10, p6

    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v11, p7

    :goto_5
    and-int/lit8 v12, v0, 0x40

    if-eqz v12, :cond_6

    const-wide/16 v12, 0x0

    goto :goto_6

    :cond_6
    move-wide/from16 v12, p8

    :goto_6
    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_7

    const-wide/16 v14, 0x0

    goto :goto_7

    :cond_7
    move-wide/from16 v14, p10

    :goto_7
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x0

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p12

    :goto_8
    and-int/lit16 v6, v0, 0x200

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    goto :goto_9

    :cond_9
    move/from16 v6, p14

    :goto_9
    and-int/lit16 v9, v0, 0x400

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v9, p15

    :goto_a
    move/from16 p3, v1

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    move/from16 v1, p16

    :goto_b
    move/from16 p4, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v1, p17

    :goto_c
    move-object/from16 p5, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    move/from16 v1, p18

    :goto_d
    move/from16 p1, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v1, p19

    :goto_e
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v18, p20

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    const/16 v19, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v19, p21

    :goto_10
    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_11

    const/16 v20, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v20, p22

    :goto_11
    const/high16 v21, 0x40000

    and-int v21, v0, v21

    if-eqz v21, :cond_12

    const-wide/16 v16, 0x0

    goto :goto_12

    :cond_12
    move-wide/from16 v16, p23

    :goto_12
    const/high16 v21, 0x80000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v21, p25

    :goto_13
    const/high16 v22, 0x100000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v22, p26

    :goto_14
    const/high16 v23, 0x200000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    const/16 v23, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v23, p27

    :goto_15
    const/high16 v24, 0x400000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v24, p28

    :goto_16
    const/high16 v25, 0x800000

    and-int v0, v0, v25

    if-eqz v0, :cond_17

    const/16 p30, 0x0

    :goto_17
    move/from16 p19, p1

    move/from16 p17, p4

    move-object/from16 p18, p5

    move-object/from16 p20, v1

    move-wide/from16 p13, v2

    move/from16 p15, v6

    move/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p16, v9

    move/from16 p7, v10

    move-object/from16 p8, v11

    move-wide/from16 p9, v12

    move-wide/from16 p11, v14

    move-wide/from16 p24, v16

    move-object/from16 p21, v18

    move-object/from16 p22, v19

    move-object/from16 p23, v20

    move-object/from16 p26, v21

    move-object/from16 p27, v22

    move-object/from16 p28, v23

    move-object/from16 p29, v24

    move-object/from16 p1, p0

    move/from16 p4, p3

    move-wide/from16 p2, v4

    goto :goto_18

    :cond_17
    move-object/from16 p30, p29

    goto :goto_17

    .line 1
    :goto_18
    invoke-direct/range {p1 .. p30}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;-><init>(JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p30

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->type:I

    goto :goto_1

    :cond_1
    move/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget v5, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->features:I

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->number:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberPresentation:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->countryIso:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-wide v9, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->date:J

    goto :goto_6

    :cond_6
    move-wide/from16 v9, p8

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-wide v11, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->duration:J

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    iget-wide v13, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->dataUsage:J

    goto :goto_8

    :cond_8
    move-wide/from16 v13, p12

    :goto_8
    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_9

    iget v15, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->newCall:I

    goto :goto_9

    :cond_9
    move/from16 v15, p14

    :goto_9
    move-wide/from16 v16, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->name:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v2, p15

    :goto_a
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    iget v3, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberType:I

    goto :goto_b

    :cond_b
    move/from16 v3, p16

    :goto_b
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->voiceMailUri:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p17

    :goto_c
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget v2, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->isRead:I

    goto :goto_d

    :cond_d
    move/from16 v2, p18

    :goto_d
    move/from16 p3, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->geoCodedLocation:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p19

    :goto_e
    const v18, 0x8000

    and-int v18, v1, v18

    if-eqz v18, :cond_f

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->lookupUri:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p20

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, p30, v18

    move-object/from16 p4, v1

    if-eqz v18, :cond_10

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->matchedNumber:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p21

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, p30, v18

    move-object/from16 p5, v1

    if-eqz v18, :cond_11

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->normalizedNumber:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p22

    :goto_11
    const/high16 v18, 0x40000

    and-int v18, p30, v18

    move-object/from16 p7, v1

    move-object/from16 p6, v2

    if-eqz v18, :cond_12

    iget-wide v1, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoId:J

    goto :goto_12

    :cond_12
    move-wide/from16 v1, p23

    :goto_12
    const/high16 v18, 0x80000

    and-int v18, p30, v18

    move-wide/from16 p8, v1

    if-eqz v18, :cond_13

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoUri:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p25

    :goto_13
    const/high16 v2, 0x100000

    and-int v2, p30, v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->formattedNumber:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v2, p26

    :goto_14
    const/high16 v18, 0x200000

    and-int v18, p30, v18

    move-object/from16 p10, v1

    if-eqz v18, :cond_15

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p27

    :goto_15
    const/high16 v18, 0x400000

    and-int v18, p30, v18

    move-object/from16 p11, v1

    if-eqz v18, :cond_16

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountId:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p28

    :goto_16
    const/high16 v18, 0x800000

    and-int v18, p30, v18

    if-eqz v18, :cond_17

    move-object/from16 p12, v1

    iget-object v1, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->sourceSimSlotIndex:Ljava/lang/Integer;

    move-object/from16 p29, p12

    move-object/from16 p30, v1

    :goto_17
    move-object/from16 p16, p1

    move-object/from16 p18, p2

    move/from16 p19, p3

    move-object/from16 p21, p4

    move-object/from16 p22, p5

    move-object/from16 p20, p6

    move-object/from16 p23, p7

    move-wide/from16 p24, p8

    move-object/from16 p26, p10

    move-object/from16 p28, p11

    move-object/from16 p1, v0

    move-object/from16 p27, v2

    move/from16 p17, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    move-wide/from16 p9, v9

    move-wide/from16 p11, v11

    move-wide/from16 p13, v13

    move/from16 p15, v15

    move-wide/from16 p2, v16

    goto :goto_18

    :cond_17
    move-object/from16 p30, p29

    move-object/from16 p29, v1

    goto :goto_17

    :goto_18
    invoke-virtual/range {p1 .. p30}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->copy(JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic getRandomId$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component10()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->newCall:I

    .line 2
    .line 3
    return p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component12()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberType:I

    .line 2
    .line 3
    return p0
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->voiceMailUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component14()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->isRead:I

    .line 2
    .line 3
    return p0
.end method

.method public final component15()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->geoCodedLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component16()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->lookupUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component17()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->matchedNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->normalizedNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component19()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->type:I

    .line 2
    .line 3
    return p0
.end method

.method public final component20()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component21()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->formattedNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component22()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component23()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component24()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->sourceSimSlotIndex:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->features:I

    .line 2
    .line 3
    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->number:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberPresentation:I

    .line 2
    .line 3
    return p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->countryIso:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component7()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->date:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component8()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component9()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->dataUsage:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;
    .locals 30

    .line 1
    new-instance v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-wide/from16 v23, p23

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    invoke-direct/range {v0 .. v29}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;-><init>(JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

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
    check-cast p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->id:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->id:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->type:I

    .line 23
    .line 24
    iget v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->type:I

    .line 25
    .line 26
    if-eq v1, v3, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->features:I

    .line 30
    .line 31
    iget v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->features:I

    .line 32
    .line 33
    if-eq v1, v3, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->number:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->number:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberPresentation:I

    .line 48
    .line 49
    iget v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberPresentation:I

    .line 50
    .line 51
    if-eq v1, v3, :cond_6

    .line 52
    .line 53
    return v2

    .line 54
    :cond_6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->countryIso:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->countryIso:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_7

    .line 63
    .line 64
    return v2

    .line 65
    :cond_7
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->date:J

    .line 66
    .line 67
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->date:J

    .line 68
    .line 69
    cmp-long v1, v3, v5

    .line 70
    .line 71
    if-eqz v1, :cond_8

    .line 72
    .line 73
    return v2

    .line 74
    :cond_8
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->duration:J

    .line 75
    .line 76
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->duration:J

    .line 77
    .line 78
    cmp-long v1, v3, v5

    .line 79
    .line 80
    if-eqz v1, :cond_9

    .line 81
    .line 82
    return v2

    .line 83
    :cond_9
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->dataUsage:J

    .line 84
    .line 85
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->dataUsage:J

    .line 86
    .line 87
    cmp-long v1, v3, v5

    .line 88
    .line 89
    if-eqz v1, :cond_a

    .line 90
    .line 91
    return v2

    .line 92
    :cond_a
    iget v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->newCall:I

    .line 93
    .line 94
    iget v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->newCall:I

    .line 95
    .line 96
    if-eq v1, v3, :cond_b

    .line 97
    .line 98
    return v2

    .line 99
    :cond_b
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->name:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->name:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_c

    .line 108
    .line 109
    return v2

    .line 110
    :cond_c
    iget v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberType:I

    .line 111
    .line 112
    iget v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberType:I

    .line 113
    .line 114
    if-eq v1, v3, :cond_d

    .line 115
    .line 116
    return v2

    .line 117
    :cond_d
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->voiceMailUri:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->voiceMailUri:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_e

    .line 126
    .line 127
    return v2

    .line 128
    :cond_e
    iget v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->isRead:I

    .line 129
    .line 130
    iget v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->isRead:I

    .line 131
    .line 132
    if-eq v1, v3, :cond_f

    .line 133
    .line 134
    return v2

    .line 135
    :cond_f
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->geoCodedLocation:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->geoCodedLocation:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_10

    .line 144
    .line 145
    return v2

    .line 146
    :cond_10
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->lookupUri:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->lookupUri:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_11

    .line 155
    .line 156
    return v2

    .line 157
    :cond_11
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->matchedNumber:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->matchedNumber:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_12

    .line 166
    .line 167
    return v2

    .line 168
    :cond_12
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->normalizedNumber:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->normalizedNumber:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_13

    .line 177
    .line 178
    return v2

    .line 179
    :cond_13
    iget-wide v3, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoId:J

    .line 180
    .line 181
    iget-wide v5, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoId:J

    .line 182
    .line 183
    cmp-long v1, v3, v5

    .line 184
    .line 185
    if-eqz v1, :cond_14

    .line 186
    .line 187
    return v2

    .line 188
    :cond_14
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoUri:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoUri:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_15

    .line 197
    .line 198
    return v2

    .line 199
    :cond_15
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->formattedNumber:Ljava/lang/String;

    .line 200
    .line 201
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->formattedNumber:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_16

    .line 208
    .line 209
    return v2

    .line 210
    :cond_16
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_17

    .line 219
    .line 220
    return v2

    .line 221
    :cond_17
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountId:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountId:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_18

    .line 230
    .line 231
    return v2

    .line 232
    :cond_18
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->sourceSimSlotIndex:Ljava/lang/Integer;

    .line 233
    .line 234
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->sourceSimSlotIndex:Ljava/lang/Integer;

    .line 235
    .line 236
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    if-nez p0, :cond_19

    .line 241
    .line 242
    return v2

    .line 243
    :cond_19
    return v0
.end method

.method public bridge synthetic getCopy()Ljl0;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getCopy()Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    move-result-object p0

    return-object p0
.end method

.method public getCopy()Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;
    .locals 33

    .line 1
    const v31, 0xffffff

    .line 2
    .line 3
    .line 4
    const/16 v32, 0x0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const-wide/16 v9, 0x0

    .line 14
    .line 15
    const-wide/16 v11, 0x0

    .line 16
    .line 17
    const-wide/16 v13, 0x0

    .line 18
    .line 19
    const/4 v15, 0x0

    .line 20
    const/16 v16, 0x0

    .line 21
    .line 22
    const/16 v17, 0x0

    .line 23
    .line 24
    const/16 v18, 0x0

    .line 25
    .line 26
    const/16 v19, 0x0

    .line 27
    .line 28
    const/16 v20, 0x0

    .line 29
    .line 30
    const/16 v21, 0x0

    .line 31
    .line 32
    const/16 v22, 0x0

    .line 33
    .line 34
    const/16 v23, 0x0

    .line 35
    .line 36
    const-wide/16 v24, 0x0

    .line 37
    .line 38
    const/16 v26, 0x0

    .line 39
    .line 40
    const/16 v27, 0x0

    .line 41
    .line 42
    const/16 v28, 0x0

    .line 43
    .line 44
    const/16 v29, 0x0

    .line 45
    .line 46
    const/16 v30, 0x0

    .line 47
    .line 48
    move-object/from16 v1, p0

    .line 49
    .line 50
    invoke-static/range {v1 .. v32}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->copy$default(Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, v1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->randomId:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v1, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->randomId:Ljava/lang/String;

    .line 57
    .line 58
    return-object v0
.end method

.method public final getCountryIso()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->countryIso:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDataUsage()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->dataUsage:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->date:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFeatures()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->features:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFormattedNumber()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->formattedNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getGeoCodedLocation()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->geoCodedLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->randomId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lnh4;->d:Lnh4;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2, v2}, Lnh4;->i(IZZ)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->randomId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v0
.end method

.method public final getLookupUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->lookupUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMatchedNumber()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->matchedNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNewCall()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->newCall:I

    .line 2
    .line 3
    return p0
.end method

.method public final getNormalizedNumber()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->normalizedNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->number:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNumberPresentation()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberPresentation:I

    .line 2
    .line 3
    return p0
.end method

.method public final getNumberType()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberType:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPhoneAccountComponentName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPhoneAccountId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPhotoId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPhotoUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSourceSimSlotIndex()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->sourceSimSlotIndex:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->type:I

    .line 2
    .line 3
    return p0
.end method

.method public final getVoiceMailUri()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->voiceMailUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->id:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->type:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->features:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->number:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_0
    add-int/2addr v0, v2

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberPresentation:I

    .line 36
    .line 37
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->countryIso:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    move v2, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_1
    add-int/2addr v0, v2

    .line 52
    mul-int/2addr v0, v1

    .line 53
    iget-wide v4, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->date:J

    .line 54
    .line 55
    invoke-static {v4, v5, v0, v1}, Lxs1;->f(JII)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-wide v4, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->duration:J

    .line 60
    .line 61
    invoke-static {v4, v5, v0, v1}, Lxs1;->f(JII)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-wide v4, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->dataUsage:J

    .line 66
    .line 67
    invoke-static {v4, v5, v0, v1}, Lxs1;->f(JII)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->newCall:I

    .line 72
    .line 73
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->name:Ljava/lang/String;

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    move v2, v3

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    :goto_2
    add-int/2addr v0, v2

    .line 88
    mul-int/2addr v0, v1

    .line 89
    iget v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberType:I

    .line 90
    .line 91
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->voiceMailUri:Ljava/lang/String;

    .line 96
    .line 97
    if-nez v2, :cond_3

    .line 98
    .line 99
    move v2, v3

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    :goto_3
    add-int/2addr v0, v2

    .line 106
    mul-int/2addr v0, v1

    .line 107
    iget v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->isRead:I

    .line 108
    .line 109
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->geoCodedLocation:Ljava/lang/String;

    .line 114
    .line 115
    if-nez v2, :cond_4

    .line 116
    .line 117
    move v2, v3

    .line 118
    goto :goto_4

    .line 119
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    :goto_4
    add-int/2addr v0, v2

    .line 124
    mul-int/2addr v0, v1

    .line 125
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->lookupUri:Ljava/lang/String;

    .line 126
    .line 127
    if-nez v2, :cond_5

    .line 128
    .line 129
    move v2, v3

    .line 130
    goto :goto_5

    .line 131
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    :goto_5
    add-int/2addr v0, v2

    .line 136
    mul-int/2addr v0, v1

    .line 137
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->matchedNumber:Ljava/lang/String;

    .line 138
    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    move v2, v3

    .line 142
    goto :goto_6

    .line 143
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    :goto_6
    add-int/2addr v0, v2

    .line 148
    mul-int/2addr v0, v1

    .line 149
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->normalizedNumber:Ljava/lang/String;

    .line 150
    .line 151
    if-nez v2, :cond_7

    .line 152
    .line 153
    move v2, v3

    .line 154
    goto :goto_7

    .line 155
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    :goto_7
    add-int/2addr v0, v2

    .line 160
    mul-int/2addr v0, v1

    .line 161
    iget-wide v4, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoId:J

    .line 162
    .line 163
    invoke-static {v4, v5, v0, v1}, Lxs1;->f(JII)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoUri:Ljava/lang/String;

    .line 168
    .line 169
    if-nez v2, :cond_8

    .line 170
    .line 171
    move v2, v3

    .line 172
    goto :goto_8

    .line 173
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    :goto_8
    add-int/2addr v0, v2

    .line 178
    mul-int/2addr v0, v1

    .line 179
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->formattedNumber:Ljava/lang/String;

    .line 180
    .line 181
    if-nez v2, :cond_9

    .line 182
    .line 183
    move v2, v3

    .line 184
    goto :goto_9

    .line 185
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    :goto_9
    add-int/2addr v0, v2

    .line 190
    mul-int/2addr v0, v1

    .line 191
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    .line 192
    .line 193
    if-nez v2, :cond_a

    .line 194
    .line 195
    move v2, v3

    .line 196
    goto :goto_a

    .line 197
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    :goto_a
    add-int/2addr v0, v2

    .line 202
    mul-int/2addr v0, v1

    .line 203
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountId:Ljava/lang/String;

    .line 204
    .line 205
    if-nez v2, :cond_b

    .line 206
    .line 207
    move v2, v3

    .line 208
    goto :goto_b

    .line 209
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    :goto_b
    add-int/2addr v0, v2

    .line 214
    mul-int/2addr v0, v1

    .line 215
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->sourceSimSlotIndex:Ljava/lang/Integer;

    .line 216
    .line 217
    if-nez p0, :cond_c

    .line 218
    .line 219
    goto :goto_c

    .line 220
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    :goto_c
    add-int/2addr v0, v3

    .line 225
    return v0
.end method

.method public final isRead()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->isRead:I

    .line 2
    .line 3
    return p0
.end method

.method public final setCountryIso(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->countryIso:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataUsage(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->dataUsage:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->date:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->duration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setFeatures(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->features:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFormattedNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->formattedNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGeoCodedLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->geoCodedLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->id:J

    .line 2
    .line 3
    return-void
.end method

.method public final setLookupUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->lookupUri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMatchedNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->matchedNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNewCall(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->newCall:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNormalizedNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->normalizedNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->number:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNumberPresentation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberPresentation:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNumberType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPhoneAccountComponentName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPhoneAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPhotoId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoId:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPhotoUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoUri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRead(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->isRead:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSourceSimSlotIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->sourceSimSlotIndex:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public final setVoiceMailUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->voiceMailUri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->id:J

    .line 4
    .line 5
    iget v3, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->type:I

    .line 6
    .line 7
    iget v4, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->features:I

    .line 8
    .line 9
    iget-object v5, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->number:Ljava/lang/String;

    .line 10
    .line 11
    iget v6, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberPresentation:I

    .line 12
    .line 13
    iget-object v7, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->countryIso:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v8, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->date:J

    .line 16
    .line 17
    iget-wide v10, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->duration:J

    .line 18
    .line 19
    iget-wide v12, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->dataUsage:J

    .line 20
    .line 21
    iget v14, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->newCall:I

    .line 22
    .line 23
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->name:Ljava/lang/String;

    .line 24
    .line 25
    move-object/from16 v16, v15

    .line 26
    .line 27
    iget v15, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->numberType:I

    .line 28
    .line 29
    move/from16 v17, v15

    .line 30
    .line 31
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->voiceMailUri:Ljava/lang/String;

    .line 32
    .line 33
    move-object/from16 v18, v15

    .line 34
    .line 35
    iget v15, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->isRead:I

    .line 36
    .line 37
    move/from16 v19, v15

    .line 38
    .line 39
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->geoCodedLocation:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v20, v15

    .line 42
    .line 43
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->lookupUri:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v21, v15

    .line 46
    .line 47
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->matchedNumber:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v22, v15

    .line 50
    .line 51
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->normalizedNumber:Ljava/lang/String;

    .line 52
    .line 53
    move/from16 v23, v14

    .line 54
    .line 55
    move-object/from16 v24, v15

    .line 56
    .line 57
    iget-wide v14, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoId:J

    .line 58
    .line 59
    move-wide/from16 v25, v14

    .line 60
    .line 61
    iget-object v14, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->photoUri:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->formattedNumber:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v27, v14

    .line 66
    .line 67
    iget-object v14, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    .line 68
    .line 69
    move-object/from16 v28, v14

    .line 70
    .line 71
    iget-object v14, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountId:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->sourceSimSlotIndex:Ljava/lang/Integer;

    .line 74
    .line 75
    move-object/from16 p0, v0

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    move-object/from16 v29, v14

    .line 80
    .line 81
    const-string v14, "CallLogItem(id="

    .line 82
    .line 83
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, ", type="

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ", features="

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, ", number="

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", numberPresentation="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, ", countryIso="

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, ", date="

    .line 130
    .line 131
    const-string v2, ", duration="

    .line 132
    .line 133
    invoke-static {v0, v1, v8, v9, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ", dataUsage="

    .line 140
    .line 141
    const-string v2, ", newCall="

    .line 142
    .line 143
    invoke-static {v0, v1, v12, v13, v2}, Lfz5;->r(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    move/from16 v1, v23

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, ", name="

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    move-object/from16 v1, v16

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, ", numberType="

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    move/from16 v1, v17

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, ", voiceMailUri="

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    move-object/from16 v1, v18

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v1, ", isRead="

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    move/from16 v1, v19

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, ", geoCodedLocation="

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    move-object/from16 v1, v20

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v1, ", lookupUri="

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", matchedNumber="

    .line 207
    .line 208
    const-string v2, ", normalizedNumber="

    .line 209
    .line 210
    move-object/from16 v3, v21

    .line 211
    .line 212
    move-object/from16 v4, v22

    .line 213
    .line 214
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    move-object/from16 v1, v24

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, ", photoId="

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    move-wide/from16 v1, v25

    .line 228
    .line 229
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, ", photoUri="

    .line 233
    .line 234
    const-string v2, ", formattedNumber="

    .line 235
    .line 236
    move-object/from16 v3, v27

    .line 237
    .line 238
    invoke-static {v0, v1, v3, v2, v15}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v1, ", phoneAccountComponentName="

    .line 242
    .line 243
    const-string v2, ", phoneAccountId="

    .line 244
    .line 245
    move-object/from16 v3, v28

    .line 246
    .line 247
    move-object/from16 v4, v29

    .line 248
    .line 249
    invoke-static {v0, v1, v3, v2, v4}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string v1, ", sourceSimSlotIndex="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move-object/from16 v1, p0

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v1, ")"

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    return-object v0
.end method

.method public final withPhoneAccountForRestore(ILmt3;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmt3;",
            ")",
            "Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x21

    .line 7
    .line 8
    move/from16 v2, p1

    .line 9
    .line 10
    if-lt v2, v0, :cond_2

    .line 11
    .line 12
    iget-object v0, v1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "com.android.phone/com.android.services.telephony.TelephonyConnectionService"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, v1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->sourceSimSlotIndex:Ljava/lang/Integer;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move-object/from16 v2, p2

    .line 29
    .line 30
    invoke-interface {v2, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ltz v0, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v29

    .line 46
    const v31, 0xbfffff

    .line 47
    .line 48
    .line 49
    const/16 v32, 0x0

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const-wide/16 v9, 0x0

    .line 59
    .line 60
    const-wide/16 v11, 0x0

    .line 61
    .line 62
    const-wide/16 v13, 0x0

    .line 63
    .line 64
    const/4 v15, 0x0

    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    const/16 v17, 0x0

    .line 68
    .line 69
    const/16 v18, 0x0

    .line 70
    .line 71
    const/16 v19, 0x0

    .line 72
    .line 73
    const/16 v20, 0x0

    .line 74
    .line 75
    const/16 v21, 0x0

    .line 76
    .line 77
    const/16 v22, 0x0

    .line 78
    .line 79
    const/16 v23, 0x0

    .line 80
    .line 81
    const-wide/16 v24, 0x0

    .line 82
    .line 83
    const/16 v26, 0x0

    .line 84
    .line 85
    const/16 v27, 0x0

    .line 86
    .line 87
    const/16 v28, 0x0

    .line 88
    .line 89
    const/16 v30, 0x0

    .line 90
    .line 91
    invoke-static/range {v1 .. v32}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->copy$default(Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :cond_1
    const v31, 0x9fffff

    .line 97
    .line 98
    .line 99
    const/16 v32, 0x0

    .line 100
    .line 101
    const-wide/16 v2, 0x0

    .line 102
    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    const-wide/16 v9, 0x0

    .line 109
    .line 110
    const-wide/16 v11, 0x0

    .line 111
    .line 112
    const-wide/16 v13, 0x0

    .line 113
    .line 114
    const/4 v15, 0x0

    .line 115
    const/16 v16, 0x0

    .line 116
    .line 117
    const/16 v17, 0x0

    .line 118
    .line 119
    const/16 v18, 0x0

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const/16 v20, 0x0

    .line 124
    .line 125
    const/16 v21, 0x0

    .line 126
    .line 127
    const/16 v22, 0x0

    .line 128
    .line 129
    const/16 v23, 0x0

    .line 130
    .line 131
    const-wide/16 v24, 0x0

    .line 132
    .line 133
    const/16 v26, 0x0

    .line 134
    .line 135
    const/16 v27, 0x0

    .line 136
    .line 137
    const/16 v28, 0x0

    .line 138
    .line 139
    const/16 v29, 0x0

    .line 140
    .line 141
    const/16 v30, 0x0

    .line 142
    .line 143
    move-object/from16 v1, p0

    .line 144
    .line 145
    invoke-static/range {v1 .. v32}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->copy$default(Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    return-object v0

    .line 150
    :cond_2
    :goto_0
    return-object p0
.end method

.method public final withSourceSimSlotIndex(ILmt3;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lmt3;",
            ")",
            "Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x21

    .line 7
    .line 8
    move/from16 v2, p1

    .line 9
    .line 10
    if-lt v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountComponentName:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "com.android.phone/com.android.services.telephony.TelephonyConnectionService"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, v1, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->phoneAccountId:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/16 v2, 0xa

    .line 28
    .line 29
    invoke-static {v2, v0}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    move-object/from16 v2, p2

    .line 36
    .line 37
    invoke-interface {v2, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ltz v0, :cond_1

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v30

    .line 53
    const v31, 0x7fffff

    .line 54
    .line 55
    .line 56
    const/16 v32, 0x0

    .line 57
    .line 58
    const-wide/16 v2, 0x0

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    const-wide/16 v9, 0x0

    .line 66
    .line 67
    const-wide/16 v11, 0x0

    .line 68
    .line 69
    const-wide/16 v13, 0x0

    .line 70
    .line 71
    const/4 v15, 0x0

    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    const/16 v17, 0x0

    .line 75
    .line 76
    const/16 v18, 0x0

    .line 77
    .line 78
    const/16 v19, 0x0

    .line 79
    .line 80
    const/16 v20, 0x0

    .line 81
    .line 82
    const/16 v21, 0x0

    .line 83
    .line 84
    const/16 v22, 0x0

    .line 85
    .line 86
    const/16 v23, 0x0

    .line 87
    .line 88
    const-wide/16 v24, 0x0

    .line 89
    .line 90
    const/16 v26, 0x0

    .line 91
    .line 92
    const/16 v27, 0x0

    .line 93
    .line 94
    const/16 v28, 0x0

    .line 95
    .line 96
    const/16 v29, 0x0

    .line 97
    .line 98
    invoke-static/range {v1 .. v32}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->copy$default(Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    :cond_1
    :goto_0
    return-object p0
.end method
