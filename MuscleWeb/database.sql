PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
PRAGMA writable_schema=ON;
INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)VALUES('table','musclesearch','musclesearch',0,'CREATE VIRTUAL TABLE musclesearch USING fts4(id, lat_name, name, origo, insertio, functio)');
CREATE TABLE IF NOT EXISTS 'musclesearch_content'(docid INTEGER PRIMARY KEY, 'c0id', 'c1lat_name', 'c2name', 'c3origo', 'c4insertio', 'c5functio');
INSERT INTO musclesearch_content VALUES(1,1,'M. temporalis','Temporal muscle','Planum temporale, fascia temporalis','Processus coronoideus mandibulae','Elevation of the mandible; posterior fibers pulls the mandible backward');
INSERT INTO musclesearch_content VALUES(2,2,'M. masseter','Masseter muscle','Arcus zygomaticus','Tuberositas masseterica mandibulae','Elevation of the mandible');
INSERT INTO musclesearch_content VALUES(3,3,'M. pterygoideus lateralis','Lateral pterygoid muscle','Facies infratemporalis alae majoris ossis sphenoidalis, lamina lateralis processus pterygoidei','Fovea pterygoidea mandibulae','Bilateral contractions pulls the mandible forward; unilateral contractions pushes the mandible laterally.');
INSERT INTO musclesearch_content VALUES(4,4,'M. pterygoideus medialis','Medial pterygoid muscle','Fossa pterygoidea ossis sphenoidalis','Tuberositas pterygoidea mandibulae','Bilateral contractions pulls the mandible forward; unilateral contractions pushes the mandible laterally.');
INSERT INTO musclesearch_content VALUES(5,5,'Venter occipitalis m. occipitofrontalis','Occpitalis muscle','Linea nuchalis superior','Galea aponeurotica','Lifting of the eyebrows and the upper eyelids; produces horizontal wrinkles of the forehead; facial expression of astonishment');
INSERT INTO musclesearch_content VALUES(6,6,'Venter frontalis m. occipitofrontalis','Frontalis muscle','Galea aponeurotica','Skin of the eyebrow','Lifting of the eyebrows and the upper eyelids; produces horizontal wrinkles of the forehead; facial expression of astonishment');
INSERT INTO musclesearch_content VALUES(7,7,'M. corrugator supercilii','Corrugator supercilii muscle','Glabella, margo supraorbitalis','Skin of the eyebrow','Pulls the skin of the eyebrows downward and medially; produces vertical wrinkles of the forehead; expression of the "thinker"');
INSERT INTO musclesearch_content VALUES(8,8,'M. orbicularis oculi, pars orbitalis ','Orbital orbicularis','Lig. palpebrale mediale','Lig. palpebrale mediale','Acts as sphincter');
INSERT INTO musclesearch_content VALUES(9,9,'M. orbicularis oculi, pars palpebralis ','Palpebral orbicularis','Lig. palpebrale mediale','Lig. palpebrale laterale','Closes the eyelid');
INSERT INTO musclesearch_content VALUES(10,10,'M. orbicularis oculi, pars lacrimalis','Lacrimal orbicularis','Os lacrimale','Lacrimal sac','Expands the lacrimal sac');
INSERT INTO musclesearch_content VALUES(11,11,'M. nasalis','Nasal muscle','Processus alveolaris maxillae','Cartilages of the external nose','Pulls the nasal wing downward; reduces the size of the nostrils');
INSERT INTO musclesearch_content VALUES(12,12,'M. levator labii superioris alaeque nasi','Levator labii superioris alaeque nasi muscle','Processus frontalis maxillae','Skin of the upper lip and nasal wing','Elevates the nasal wing and upper lip upward, enlarges the size of the nostrils.');
INSERT INTO musclesearch_content VALUES(13,13,'M. orbicularis oris','Orbicularis oculi muscle','Fibres arranged circulary','Fibres arranged circulary',replace('Closes the lips; protrudes them forward\n(sucking shape).','\n',char(10)));
INSERT INTO musclesearch_content VALUES(14,14,'M. levator anguli oris','Levator anguli oris muscle','Fossa canina','Skin at the angle of the mouth','Lifts the angle of the mouth');
INSERT INTO musclesearch_content VALUES(15,15,'M. levator labii superioris','Levator labii superioris muscle','Margo infraorbitalis maxillae','Skin of the upper lip','Lifts the upper lip.');
INSERT INTO musclesearch_content VALUES(16,16,'M. zygomaticus major','Zygomaticus major muscle','Os zygomaticum','Skin at the angle of the mouth','Lifts the angle of mouth upward and laterally&mdash;expression of pleasure&mdash;laughing muscle.');
INSERT INTO musclesearch_content VALUES(17,17,'M. zygomaticus minor','Zygomaticus minor muscle','Os zygomaticum','Skin at the angle of the mouth','Lifts the angle of mouth upward and laterally&mdash;expression of pleasure&mdash;laughing muscle');
INSERT INTO musclesearch_content VALUES(18,18,'M. risorius ','Risorius muscle','Fascia masseterica','Skin at the angle of the mouth ','Pulls the angle of mouth laterally; produces the nasolabial folds&mdash;expression of pleasure&mdash;laughing muscle');
INSERT INTO musclesearch_content VALUES(19,19,'M. buccinator ','Buccinator muscle','Processus alveolaris maxillae et mandibulae, raphe pterygomandibularis ','Skin at the angle of the mouth','Pulls the angle of mouth laterally; compresses the cheeks&mdash;expression of satisfaction');
INSERT INTO musclesearch_content VALUES(20,20,'M. depressor anguli oris','Depressor anguli oris muscle','Basis mandibulae ','Skin at the angle of the mouth','Pulls the angle of the mouth downward&mdash;expression of sadness');
INSERT INTO musclesearch_content VALUES(21,21,'M. depressor labii inferioris ','Depressor labii inferioris muscle','Basis mandibulae ','Skin of the lower lip','Pulls the angle of the mouth and lower lip downward&mdash;expression of preserverance');
INSERT INTO musclesearch_content VALUES(22,22,'M. mentalis ','Mentalis muscle','Processus alveolaris mandibulae','Skin of the chin','Produses small dimples in the chin&mdash;expression of doubt');
INSERT INTO musclesearch_content VALUES(23,23,'M. auricularis anterior','Anterior auricularis muscle','Fascia temporalis','Helix (ear)','Pulls ear forward');
INSERT INTO musclesearch_content VALUES(24,24,'M. auricularis superior','Superior auricularis muscle','Fascia temporalis','Above the ear','Pulls ear upward');
INSERT INTO musclesearch_content VALUES(25,25,'M. auricularis posterior','Posterior auricularis muscle','Processus mastoideus','Posterior ear','Pulls ear backward');
INSERT INTO musclesearch_content VALUES(26,26,'M. mylohyoideus','Mylohyodeus muscle','Linea mylohyoidea','Os hyoideum','Pulls the mandible downward; elevates os hyoideum.');
INSERT INTO musclesearch_content VALUES(27,27,'M. digastricus, venter anterior','Anterior belly of the digastric muscle','Fossa digastrica','Os hyoideum','Pulls the mandible downward; elevates os hyoideum');
INSERT INTO musclesearch_content VALUES(28,28,'M. digastricus, venter posterior','Posterior belly of the digastricus muscle','Incisura mastoidea','Os hyoideum','Pulls os hyoideum upward and backward');
INSERT INTO musclesearch_content VALUES(29,29,'M. stylohyoideus','Stylohyoideus muscle','Processus styloideus','Os hyoideum','Pulls os hyoideum upward and backward');
INSERT INTO musclesearch_content VALUES(30,30,'Platysma','Platysma muscle','Fascia pectoralis - region of the 2nd rib','Basis mandibulae','Pulls the mandible downward; produces slight wrinkling of the skin');
INSERT INTO musclesearch_content VALUES(31,31,'M. sternocleidomastoideus','Sternocleidomastoid muscle','Extremitas sternalis claviculae, manubrium sterni','Processus styloideus, linea nuchalis superior','Bilateral contraction lifts the head backward; unilateral contraction bends the head to the same side and turns the face to opposite side; acts in forced inspiration.');
INSERT INTO musclesearch_content VALUES(32,32,'M. trapezius','Trapezius muscle','Protuberantia occipitalis externa, linea nuchalis superior, log. nuchae, processus spinosi vertebrarum thoraciae','Spina scapulae, acromion, extremitas acromialis claviculae','Pulls the scapula toward the vertebral column; upper part elevates the shoulder; lower part pulls the shoulder downward.');
INSERT INTO musclesearch_content VALUES(33,33,'M. sternohyoideus','Sternohyoid muscle','Manubrium sterni','Os hyoideum','Pulls os hyoideum downward.');
INSERT INTO musclesearch_content VALUES(34,34,'M. sternothyreoideus','Sternothyroid muscle','Manubrium sterni','Cartilago thyreoidea','Pulls larynx downward.');
INSERT INTO musclesearch_content VALUES(35,35,'M. thyreohyoideus','Thyrohyoid muscle','Cartilago thyreoidea','Os hyoideum','Pulls os hyoideum downward or elevates larynx.');
INSERT INTO musclesearch_content VALUES(36,36,'M. geniohyoideus','Geniohyoid muscle','Spina mentalis','Os hyoideum','Pulls the mandible downward or elevates os hyoideum.');
INSERT INTO musclesearch_content VALUES(37,37,'M. omohyodeus, venter superior','Superior belly of the omohyoid muscle','Os hyoideum','Continues into tendon','Pulls os hyoideum downward or elevates scapula');
INSERT INTO musclesearch_content VALUES(38,38,'M. omohyoideus, venter inferior','Inferior belly of the omohyoid muscle','Margo superior scapulae','Continues into tendon','Pulls os hyoideum downward or elevates scapula');
INSERT INTO musclesearch_content VALUES(39,39,'M. scalenus anterior','Scalenus anterior','Processus transversus vertebrae cervicalis III–IV','Tuberculum m. scaleni anterioris costae I','Bilateral contraction bends the neck forward; unilateral contraction bends the neck to the same side; acts in inspiration.');
INSERT INTO musclesearch_content VALUES(40,40,'M. scalenus medius','Scalenus medius','Processus transversus vertebrae cervicalis II–VII','Facies superior costae I, behind sulcus a. subclaviae','Bilateral contraction bends the neck forward; unilateral contraction bends the neck to the same side; acts in inspiration.');
INSERT INTO musclesearch_content VALUES(41,41,'M. scalenus posterior','Scalenus posterior','Processus transversus vertebrae cervicalis V–VII','Costae II','Bilateral contraction bends the neck forward; unilateral contraction bends the neck to the same side; acts in inspiration.');
INSERT INTO musclesearch_content VALUES(42,42,'M. longus capitis','Longus capitis muscle','Processus transversus vertebrae cervicalis III-VI','Pars basilaris ossis occipitalis','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.');
INSERT INTO musclesearch_content VALUES(43,43,'M. longus colli','Longus colli muscle','Corpus vertebrae cervicalis V - vertebrae thoracicae III, processus transversus vertebrae cervicalis II–V','Tuberculum anterius atlantis, corpus vertebrae cervicalis II–IV, processus transversus vertebrae cervicalis VI','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.');
INSERT INTO musclesearch_content VALUES(44,44,'M. rectus capitis anterior','Rectus capitis anterior muscle','Massa lateralis atlantis','Pars basilaris ossis occipitalis','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.');
INSERT INTO musclesearch_content VALUES(45,45,'M. rectus capitis lateralis','Rectus capitis lateralis muscle','Processus transversus atlantis','Pars lateralis ossis occipitalis','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.');
INSERT INTO musclesearch_content VALUES(46,46,'M. pectoralis major, pars clavicularis','Clavicular head of the pectoralis major muscle','Extremitas sternalis claviculae','Crista tuberculi majoris humeri','Flexio brachii');
INSERT INTO musclesearch_content VALUES(47,47,'M. pectoralis major, pars sternocostalis','Sterocostal head of the pectoralis major muscle','Facies anterior sterni, cartilagines costarum II-VII','Crista tuberculi majoris humeri','Adductio brachii, rotatio interna brachii');
INSERT INTO musclesearch_content VALUES(48,48,'M. pectoralis major, pars abdominalis','Abdominal part of the pectoralis major muscle','Lamina anterior vaginae m. Recti abdominis','Crista tuberculi majoris humeri','Adductio brachii, rotatio interna brachii');
INSERT INTO musclesearch_content VALUES(49,52,'M. pectoralis minor','Pectoralis minor muscle','Facies externae costarum II-V','Processus coracoideus scapulae','Pulls shoulder forward and downward. Acts as inspiration muscle.');
INSERT INTO musclesearch_content VALUES(50,53,'M. subclavius','Subclavius muscle','Facies superior costae I','Facies inferior claviculae','Elevates the 1st rib or pulls clavicula downward. Acts as inspiration muscle.');
INSERT INTO musclesearch_content VALUES(51,54,'M. serratus anterior','Serratus anterior muscle','Facies externa costae I-IX','Margo medialis et angulus inferior scapulae','Rotatio scapulae et elevatio brachii. Acts as inspiration muscle.');
INSERT INTO musclesearch_content VALUES(52,55,'M. trapezius','Trapezius muscle','Protuberantia occipitalis externa, linea nuchalis superior, log. nuchae, processus spinosi vertebrarum thoraciae','Spina scapulae, acromion, extremitas acromialis claviculae','Pulls the scapula toward the vertebral column; upper part elevates the shoulder; lower part pulls the shoulder downward.');
INSERT INTO musclesearch_content VALUES(53,56,'M. latissimus dorsi','Latissimus dorsi muscle','Crista iliaca, fascia thoracolumbalis, processus spinosus vertebrae thoracicae VII-XII, facies externae costae IX-XII','Crista tuberculi minoris humeri','Adductio brachii, extensio brachii, rotatio interna brachii. Acts as inspiration muscle.');
INSERT INTO musclesearch_content VALUES(54,57,'M. rhomboideus major','Rhomboideus major muscle','Processus spinosus vertebrae thoracicae I-IV','Margo medialis scapulae','Elevates the scapula and pulls the scapula toward the vertebral column.');
INSERT INTO musclesearch_content VALUES(55,58,'M. rhomboideus minor','Rhomboideus minor muscle','Processus spinosus vertebrae cervicalis VI-VII, vertebrae thoracicae I, lig. nuchae','Margo medialis scapulae','Elevates the scapula and pulls the scapula toward the vertebral column.');
INSERT INTO musclesearch_content VALUES(56,59,'M. levator scapulae','Levator scapulae muscle','Processus tranversus vertebrae cervicalis I-IV','Angulus superior scapulae','Elevates the scapula.');
INSERT INTO musclesearch_content VALUES(57,60,'M. serratus posterior superior','Serratus posterior superior muscle','Processus spinosus vertebrae cervicalis VI-VII, vertebrae thoracicae I-II','Facies externae costae II-V','Elevates the ribs; acts as inspiration muscle.');
INSERT INTO musclesearch_content VALUES(58,61,'M. serratus posterior inferior','Serratus posterior inferior muscle','Processus spinosus vertebrae thoracicae XI-XII, vertebrae lumbales I-II','Facies externae costae IX-XII','Pulls the ribs downward; acts as expiration muscle.');
INSERT INTO musclesearch_content VALUES(59,62,'M. deltoideus, pars clavicularis','Clavicular part of the deltoid muscle','Extremitas acromialis claviculae','Tuberositas deltoidea','Adductio brachii, flexio brachii, rotatio interna brachii');
INSERT INTO musclesearch_content VALUES(60,63,'M. deltoideus, pars acromialis','Acromial part of the deltoid muscle','Acromion','Tuberositas deltoidea','Abduction brachii, flexio brachii, extensio brachii');
INSERT INTO musclesearch_content VALUES(61,64,'M. deltoideus, pars spinalis ','Spinal part of the deltoid muscle','Spina scapulae','Tuberositas deltoidea','Adductio brachii, extensio brachii, rotatio externa brachii');
INSERT INTO musclesearch_content VALUES(62,65,'M. supraspinatus','Supraspinatus muscle','Fossa supraspinata','Tuberculum majus humeri','Abductio brachii');
INSERT INTO musclesearch_content VALUES(63,66,'M. infraspinatus','Infraspinatus muscle','Fossa infraspinata','Tuberculum majus humeri','Rotatio externa brachii');
INSERT INTO musclesearch_content VALUES(64,67,'M. teres major','Teres major muscle','Angulus inferior scapulae','Crista tuberculi minoris humeri','Adductio brachii, extensio brachii, rotatio interna brachii');
INSERT INTO musclesearch_content VALUES(65,68,'M. teres minor','Teres minor muscle','Margo lateralis scapulae','Tuberculum majus humeri','Rotatio externa brachii, extensio brachii');
INSERT INTO musclesearch_content VALUES(66,69,'M. subscapularis','Subscapularis muscle','Fossa subscapularis','Tuberculum minus humeri, crista tuberculi minoris','Adductio brachii, rotatio interna brachii');
INSERT INTO musclesearch_content VALUES(67,70,'M. coracobrachialis','Coracobrachalis muscle','Processus coracoideus scapulae','Corpus humeri','Flexio brachii, adductio brachii, rotatio interna brachii');
INSERT INTO musclesearch_content VALUES(68,71,'M. biceps brachii, caput longum','Long head of the biceps muscle','Tuberculum supraglenoidale scapulae','Tuberositas radii','Flexio antebrachii, suptionatio antebrachii, abductio brachii');
INSERT INTO musclesearch_content VALUES(69,72,'M. biceps brachii, caput breve','Short head of the biceps muscle','Processus coracoideus scapulae','Tuberositas radii','Flexio antebrachii, suptionatio antebrachii, flexio brachii');
INSERT INTO musclesearch_content VALUES(70,73,'M. brachialis','Brachialis muscle','Humerus, lower part of facies anterior','Tuberositas ulnae','Flexio antebrachii');
INSERT INTO musclesearch_content VALUES(71,74,'M. triceps brachii, caput longum','Long head of the triceps muscle','Tuberculum infraglenoidale scapulae','Olecranon ulnae','Extensio antebrachii, extensio brachii, adductio brachii');
INSERT INTO musclesearch_content VALUES(72,75,'M. triceps brachii, caput laterale','Lateral head of the triceps muscle','Humerus, above sulcus n. radialis','Olecranon ulnae','Extensio antebrachii');
INSERT INTO musclesearch_content VALUES(73,76,'M. triceps brachii, caput mediale','Medial head of the triceps muscle','Humerus, below sulcus n. radialis','Olecranon ulnae','Extensio antebrachii');
INSERT INTO musclesearch_content VALUES(74,77,'M. anconeus','Anconeus muscle','Epicondylus lateralis humeri','Epiphysis proximalis ulnae','Extensio antebrachii');
INSERT INTO musclesearch_content VALUES(75,78,'M. pronator teres','Pronator teres muscle','Epicondylus medialis humeri, processus coronoideus ulnae','Facies posterior et lateralis radii','Flexi antebrachii, pronatio antebrachii');
INSERT INTO musclesearch_content VALUES(76,80,'M. flexor carpi radialis','Flexor carpi radialis muscle','Epicondylus medialis humeri, fascia antebrachii','Basis ossis metacarpalis II et III','Flexio manus, abductio manus');
INSERT INTO musclesearch_content VALUES(77,81,'M. palmaris longus','Palmaris longus muscle','Epicondylus medalis humeri','Aponeurosis palmaris','Flexio manus');
INSERT INTO musclesearch_content VALUES(78,82,'M. flexor carpi ulnaris','Flexor carpi ulnaris muscle','Epicondylus medialis humeri, olecranon, margo posterior ulnae','Os pisiforme, os hamatum, os metacarpale V','Flexio manus, adductio manus');
INSERT INTO musclesearch_content VALUES(79,83,'M. flexor digitorum superficialis','Flexor digitorum superficialis','Epicondylus medalis humeri','Basis phalangis mediae II-V','Flexio phalangis mediae, flexio phalangis proximalis, flexio manus');
INSERT INTO musclesearch_content VALUES(80,84,'M. flexor digitorum profundus','Flexor digitorum profundus','Facies anterior ulnae, membrana interossea antebrachii','Basis phalangis distalis II-V','Flexio phalangis distalis, flexio phalangis mediae, flexio phalangis proximalis, flexio manus');
INSERT INTO musclesearch_content VALUES(81,85,'M. flexor pollicis longus','Flexor pollicis longus muscle','Facies anterior radii, membrana interossea antebrachii','Basis phalangis distalis pollicis','Flaxio phalangis distalis et proximalis pollicis, flexio poliicis, flexio manus');
INSERT INTO musclesearch_content VALUES(82,86,'M. pronator quadratus','Pronator quadratus muscle','Facies anterior ulnae','Facies anterior radii','Pronatio antebrachii');
INSERT INTO musclesearch_content VALUES(83,87,'M. brachioradialis','Brachioradialis muscle','Margo lateralis humeri, septum intermusculare laterale','Processus styloideus radii','Flexio antebrachii, position between supinatio et pronatio antebrachii');
INSERT INTO musclesearch_content VALUES(84,88,'M. extensor carpi radialis longus','Extensor carpi radialis longus muscle','Margo et epicondylus lateralis humeri, septum intermusculare laterale','Basis ossis metacarpalis II','Extensio manus, abductio manus');
INSERT INTO musclesearch_content VALUES(85,89,'M. extensor carpi radialis brevis','Extensor carpi radialis brevis muscle','Epicondylus lateralis humeri','Basis ossis metacarpalis III','Extensio manus, abductio manus');
INSERT INTO musclesearch_content VALUES(86,90,'M. extensor digitorum','Extensor digitorum muscle','Epicondylus lateralis humeri','Basis phalangis mediae, basis phalangis distalis (II - V fingers) ','Extensio digitorum, extensio manus ');
INSERT INTO musclesearch_content VALUES(87,91,'M. extensor digiti minimi','Extensor digiti minimi muscle','Epicondylus lateralis humeri','Basis phalangis mediae, basis phalangis distalis (V finger)','Extensio digiti minimi ');
INSERT INTO musclesearch_content VALUES(88,92,'M. extensor carpi ulnaris','Extensor carpi ulnaris muscle','Epicondylus lateralis humeri, olecranon, facies posterior ulnae','Basis ossis metacarpalis V ','Extensio manus, adductio manus ');
INSERT INTO musclesearch_content VALUES(89,93,'M. abductor pollicis longus','Abductor pollicis longus muscle','Facies posterior ulnae et radii, membrana interossea antebrachii ','Basis ossis metacarpalis I ','Abductio pollicis ');
INSERT INTO musclesearch_content VALUES(90,94,'M. extensor pollicis brevis','Extensor pollicis brevis muscle','Facies posterior radii et membrana interossea antebrachii ','Basis phalangis proximalis pollicis ','Extensio phalangis proximalis pollicis ');
INSERT INTO musclesearch_content VALUES(91,95,'M. extensor pollicis longus','Extensor pollicis longus muscle','Facies posterior ulnae, membrana interossea antebrachii ','Basis phalangis distalis pollicis ','Extensio pollicis');
INSERT INTO musclesearch_content VALUES(92,96,'M. extensor indicis','Extensor indicis muscle','Facies posterior ulnae, membrana interossea antebrachii ','Basis phalangis mediae, basis phalangis distalis indicis ','Extensio indicis ');
INSERT INTO musclesearch_content VALUES(93,97,'M. supinator','Supinator muscle','Epicondylus lateralis humeri, ulna, lig. collaterale radiale ','Facies lateralis radii ','Supinatio antebrachii ');
INSERT INTO musclesearch_content VALUES(94,98,'M. abductor pollicis brevis ','Abductor pollicis brevis muscle','etinaculum flexorum, os scaphoideum ','Basis phalangis proximalis pollicis ','Abductio pollicis');
INSERT INTO musclesearch_content VALUES(95,99,'M. flexor pollicis brevis, caput superficiale','Superficial head of the flexor pollicis brevis muscle','etinaculum flexorum, os scaphoideum ','Basis phalangis proximalis pollicis ','Flexio pollicis, oppositio pollicis');
INSERT INTO musclesearch_content VALUES(96,100,'M. flexor pollicis brevis, caput profundum','Deep head of the flexor pollicis brevis muscle','Os trapezium, os trapezoideum ','Basis phalangis proximalis pollicis ','Flexio pollicis, oppositio pollicis');
INSERT INTO musclesearch_content VALUES(97,101,'M. opponens pollicis','Abductor pollicis longus muscle','Retinaculum flexorum et os trapezium ','Basis ossis metacarpalis I ','Oppositio pollicis');
INSERT INTO musclesearch_content VALUES(98,102,'M. adductor pollicis, caput obliquum','Oblique head of the adductor pollicis muscle','Os capitatum ','Basis phalangis proximalis pollicis ','Adductio pollicis');
INSERT INTO musclesearch_content VALUES(99,103,'M. adductor pollicis, caput transversum','Transverse head of the adductor pollicis muscle','Os metacarpale III ','Basis phalangis proximalis pollicis ','Adductio pollicis');
INSERT INTO musclesearch_content VALUES(100,104,'M. abductor digiti minimi ','Abductor digiti minimi muscle','Os pisiforme, retinaculum flexorum ','Basis phalangis proximalis digiti minimi ','Abductio digiti minimi ');
INSERT INTO musclesearch_content VALUES(101,105,'M. flexor digiti minimi brevis ','Flexor digiti minimi brevis muscle','Hamulus ossis hamati, retinaculum flexorum','Basis phalangis proximalis digiti minimi ','Flexio digiti minimi ');
INSERT INTO musclesearch_content VALUES(102,106,'M. opponens digiti minimi ','Opponens digiti minimi muscle','Hamulus ossis hamati, retinaculum flexorum ','Os metacarpale V ','Oppositio digiti minimi ');
INSERT INTO musclesearch_content VALUES(103,107,'M. palmaris brevis ','Palmaris brevis muscle','Retinaculum flexorum and aponeurosis palmaris ulnar side ','Skin of the palm on ulnar side ','Wrinkles of the skin ');
INSERT INTO musclesearch_content VALUES(104,108,'Mm. lumbricales (4)','Lumbrical muscles','M. flexor digitorum profundus tendons ','Phalanx proximalis (II - V fingers) and m. extensor digitorum tendons','Flexio phalangis proximalis, extensio phalangis mediae, extensio phalangis distalis (II - V fingers)');
INSERT INTO musclesearch_content VALUES(105,109,'Mm. interossei palmares (3)','Palmar interossei muscles','Os metacarpale II, IV, V','Phalanx proximalis (II, IV, V fingers)','Adductio digitorum (pull 2nd, 4th and 5th fingers to 3rd) ');
INSERT INTO musclesearch_content VALUES(106,110,'Mm. interossei dorsales (4)','Dorsal interossei muscles','Between metacarpal bones of 1st to 5th fingers ','Phalanx proximalis (II - IV fingers)','Abductio digitorum (pull 2nd and 4th fingers away from 3rd)');
INSERT INTO musclesearch_content VALUES(107,111,'M. iliacus','Iliacus muscle','Fossa iliaca','Trochanter minor','Flexio femoris, adductio, rotatio externa femoris. Flexio trunci.');
INSERT INTO musclesearch_content VALUES(108,112,'M. psoas major','Psoas major muscle','Fossa iliaca','Trochanter minor','Flexio femoris, adductio, rotatio externa femoris. Flexio trunci.');
INSERT INTO musclesearch_content VALUES(109,113,'M. psoas minor','Psoas minor muscle','Vertebra thoracica XII, vertebrae lumbales I','Eminentia iliopubica','Flexio trunci');
INSERT INTO musclesearch_content VALUES(110,114,'M. gluteus maximus ','Gluteus maximus muscle','Facies glutea behind linea glutea posterior, facies posterior ossis sacri et ossis coccygis, lig. sacrotuberale, fascia thoracolumbalis','Tuberositas glutea, tractus iliotibialis ','Extensio femoris, rotatio externa femoris, abductio femoris');
INSERT INTO musclesearch_content VALUES(111,115,'M. gluteus medius ','Gluteus medius muscle','Facies glutea between linea glutea anterior et posterior','Trochanter major ','Abductio femoris. Anterior part - rotatio interna femoris. Posterior part - rotatio externa femoris');
INSERT INTO musclesearch_content VALUES(112,116,'M. gluteus minimus ','Gluteus minimus muscle','Facies glutea between linea glutea anterior et inferior ','Trochanter major ','Abductio femoris. Anterior part - rotatio interna femoris. Posterior part - rotatio externa femoris');
INSERT INTO musclesearch_content VALUES(113,117,'M. tensor fasciae latae ','Tensor fasciae latae muscle','Spina iliaca anterior superior ','Continues into tractus iliotibialis','Tenses tractus iliotibialis. Flexio, rotatio interna femoris. ');
INSERT INTO musclesearch_content VALUES(114,118,'M. piriformis ','Piriformis muscle','Facies pelvica ossis sacri laterally from II - IV foramina sacralia anteriora ','Passes through foramen ischiadicum majus to trochanter major','Abductio femoris, rotatio externa femoris. ');
INSERT INTO musclesearch_content VALUES(115,119,'M. obturator internus ','Obturator internus muscle','Inner surface of membranae obturatoriae','Passes through foramen ischiadicum minus to fossa trochanterica','Rotatio externa femoris ');
INSERT INTO musclesearch_content VALUES(116,120,'M. gemellus superior ','Gemellus superior muscle','Spina ischiadica ','Fossa trochanterica ','Rotatio externa femoris ');
INSERT INTO musclesearch_content VALUES(117,121,'M. gemellus inferior ','Gemellus inferior muscle','Tuber ischiadicum ','Fossa trochanterica ','Rotatio externa femoris ');
INSERT INTO musclesearch_content VALUES(118,122,'M. quadratus femoris ','Quadratus femoris muscle','Tuber ischiadicum ','Crista intertrochanterica','Rotatio externa femoris, adductio femoris');
INSERT INTO musclesearch_content VALUES(119,123,'M. obturator externus ','Obturator externus muscle','External surface of membranae obturatoriae','Fossa trochanterica ','Rotatio externa femoris ');
INSERT INTO musclesearch_content VALUES(120,124,'M. rectus femoris','Rectus femoris muscle','Spina iliaca anterior inferior ','By lig. patellae to tuberositas tibiae ','Extensio cruris, flexio femoris');
INSERT INTO musclesearch_content VALUES(121,125,'M. vastus medialis','Vastus medialis muscle','Labium mediale lineae asperae','By lig. patellae to tuberositas tibiae ','Extensio cruris ');
INSERT INTO musclesearch_content VALUES(122,126,'M. vastus lateralis','Vastus lateralis muscle','Labium laterale lineae asperae ','By lig. patellae to tuberositas tibiae ','Extensio cruris ');
INSERT INTO musclesearch_content VALUES(123,127,'M. vastus intermedius','Vastus intermedius muscle','Anterior surface of the femur ','By lig. patellae to tuberositas tibiae ','Extensio cruris ');
INSERT INTO musclesearch_content VALUES(124,128,'M. sartorius','Sartorius muscle','Spina iliaca anterior superior ','By lig. patellae to tuberositas tibiae ','Extensio cruris ');
INSERT INTO musclesearch_content VALUES(125,129,'M. pectineus','Pectineus muscle','Ramus superior et pecten ossis pubis ','Linea pectinea femoris ','Flexio femoris, adductio femoris, rotatio externa femoris');
INSERT INTO musclesearch_content VALUES(126,130,'M. adductor brevis','Ramus inferior ossis pubis ','Ramus superior et pecten ossis pubis ','Labium mediale lineae asperae ','Flexio femoris, adductio femoris, rotatio externa femoris');
INSERT INTO musclesearch_content VALUES(127,131,'M. adductor longus','Adductor longus muscle','Ramus superior ossis pubis between symphysis et tuberculum pubicum ','Labium mediale lineae asperae ','Flexio femoris, adductio femoris, rotatio externa femoris ');
INSERT INTO musclesearch_content VALUES(128,132,'M. adductor magnus','Adductor magnus muscle','Ramus inferior ossis pubis, ramus ossis ischii, tuber ischiadicum ','Labium mediale lineae asperae, epicondylus medialis femoris ','Adductio femoris, rotatio interna femoris, extensio femoris ');
INSERT INTO musclesearch_content VALUES(129,133,'M. gracilis','Gracilis muscle','Ramus inferior ossis pubis ','Tuberositas tibiae ','Adductio femoris, flexio cruris, rotatio interna cruris ');
INSERT INTO musclesearch_content VALUES(130,134,'M. semitendinosus','Semitendinosus muscle','Tuber ischiadicum','Tuberositas tibiae','Extensio femoris, flexio cruris, rotatio interna cruris');
INSERT INTO musclesearch_content VALUES(131,135,'M. semimembranosus','Semimembranous muscle','Tuber ischiadicum','Condylus medialis tibiae','Extensio femoris, flexio cruris, rotatio interna cruris');
INSERT INTO musclesearch_content VALUES(132,136,'M. biceps femoris, caput longum','Long head of the biceps femoris muscle','Tuber ischiadicum','Caput fibulae','Flexio cruris, rotatio externa cruris');
INSERT INTO musclesearch_content VALUES(133,137,'M. biceps femoris, caput breve','Short head of the biceps femoris muscle','Labium laterale lineae asperae','Caput fibulae','Flexio cruris, rotatio externa cruris, extensio femoris');
INSERT INTO musclesearch_content VALUES(134,138,'M. tibialis anterior','Tibialis anterior muscle','Condylus lateralis tibiae, facies lateralis tibiae, membrana interossea cruris ','Basis ossis metatarsalis I, os cuneiforme mediale ','Extensio pedis, supinatio pedis, adductio pedis ');
INSERT INTO musclesearch_content VALUES(135,139,'M. extensor digitorum longus','Extensor digitorum longus muscle','Condylus lateralis tibiae, facies lateralis tibiae, membrana interossea cruris ','Phalanx media et distalis, os metatarsale V ','Extensio pedis, extensio digitorum II – V ');
INSERT INTO musclesearch_content VALUES(136,140,'M. extensor hallucis longus','Extensor hallucis longus muscle','Facies medialis fibulae, membrana interossea cruris ','Phalanx distalis hallucis ','Extensio pedis, extensio hallucis, supinatio et adductio pedis ');
INSERT INTO musclesearch_content VALUES(137,143,'M. fibularis longus ','Fibularis longus muscle','Fibula, septum intermusculare posterius','Basis ossis metatarsalis I, os cuneiforme mediale ','Flexio pedis, abductio et pronatio pedis ');
INSERT INTO musclesearch_content VALUES(138,144,'M. fibularis brevis','Fibularis brevis muscle','Fibula, septa intermuscularia','Basis ossis metatarsalis V','Flexio pedis, abductio et pronatio pedis. ');
INSERT INTO musclesearch_content VALUES(139,145,'M. gastrocnemius, caput mediale','Medial head of the gastrocnemius muscle','Condylus medialis femoris ','Tendo calcanei (tendo Achillis) to tuber calcanei ','Flexio pedis, supinatio et adductio pedis, flexio cruris');
INSERT INTO musclesearch_content VALUES(140,146,'M. gastrocnemii, caput laterale','Lateral head of the gastrocnemius muscle','Condylus lateralis femoris','Tendo calcanei (tendo Achillis) to tuber calcanei ','Flexio pedis, supinatio et adductio pedis, flexio cruris');
INSERT INTO musclesearch_content VALUES(141,147,'M. soleus','Soleus muscle','Linea m. solei, caput fibulae, arcus tendineus m. solei','Tendo calcanei (tendo Achillis) to tuber calcanei ','Flexio pedis, supinatio et adductio pedis ');
INSERT INTO musclesearch_content VALUES(142,148,'M. plantaris','Plantaris muscle','Condylus lateralis femoris','Tendo calcanei (tendo Achillis) to tuber calcanei ','Flexio cruris, flexio pedis');
INSERT INTO musclesearch_content VALUES(143,149,'M. popliteus','Popliteus muscle','Condylus lateralis femoris','Facies posterior tibiae above linea m. solei ','Flexio cruris, rotatio interna cruris ');
INSERT INTO musclesearch_content VALUES(144,150,'M. tibialis posterior','Tibialis posterior muscle','Facies posterior tibiae et fibulae, membrana interossea cruris ','Os naviculare, ossa cuneiformia ','Flexio pedis, supinatio et adductio pedis ');
INSERT INTO musclesearch_content VALUES(145,151,'M. flexor digitorum longus','Flexor digitorum longus muscle','Facies posterior tibiae, deep plate of the fasciae cruris ','Phalanges distales (II-V) ','Flexio pedis, flexio phalangis distalis, mediae et proximalis ');
INSERT INTO musclesearch_content VALUES(146,152,'M. flexor hallucis longus','Flexor hallucis longus muscle','Fibula, membrana interossea cruris ','Phalanx distalis hallucis','Flexio pedis, supinatio et adductio pedis, flexio hallucis ');
INSERT INTO musclesearch_content VALUES(147,153,'M. extensor digitorum brevis ','Extensor digitorum brevis muscle','Calcaneus (superior and lateral surface)','To m. extensor digitorum longus tendons (II, III, IV) ','Extensio digitorum (II, III, IV) ');
INSERT INTO musclesearch_content VALUES(148,154,'M. extensor hallucis brevis ','Extensor hallucis brevis muscle','Calcaneus (superior surface)','To m. extensor hallucis longus tendons ','Extensio hallucis');
INSERT INTO musclesearch_content VALUES(149,155,'M. abductor hallucis','Abductor hallucis muscle','Tuber calcanei ','Basis phalangis proximalis hallucis ','Abductio hallucis, flexio hallucis');
INSERT INTO musclesearch_content VALUES(150,156,'M. flexor hallucis brevis','Flexor hallucis brevis muscle','Os cuneiforme mediale, lig. plantare longum ','Basis phalangis proximalis hallucis ','Flexio hallucis');
INSERT INTO musclesearch_content VALUES(151,157,'M. adductor hallucis','Adductor hallucis muscle','Os cuboideum, os cuneiforme laterale, basis ossis metatarsalis II, III, lig. plantare longum, capsulae artt. metatarsophalangeae II - V ','Basis phalangis proximalis hallucis ','Adductio hallucis, flexio hallucis');
INSERT INTO musclesearch_content VALUES(152,158,'M. abductor digiti minimi','Abductor digiti minimi muscle','Tuber calcanei lateral surface, basis ossis metatarsalis V ','Basis phalangis proximalis digiti minimi ','Abudctio et flexio digiti minimi');
INSERT INTO musclesearch_content VALUES(153,159,'M. flexor digiti minimi brevis','Flexor digiti minimi brevis muscle','Basis ossis metatarsalis V, lig. plantare longum ','Basis phalangis proximalis digiti minimi ','Flexio digitimi minimi');
INSERT INTO musclesearch_content VALUES(154,160,'M. opponens digiti minimi','Opponens digiti minimi muscle','Basis ossis metatarsalis V, lig. plantare longum ','Facies lateralis ossis metatarsalis V','Adductio et oppositio digiti minimi');
INSERT INTO musclesearch_content VALUES(155,161,'M. flexor digitorum brevis ','Flexor digitorum brevis muscle','Tuber calcanei, aponeurosis plantaris ','Basis phalangis mediae (II-V)','Flexio phalangis mediae, flexio phalangis proximalis ');
INSERT INTO musclesearch_content VALUES(156,162,'M. quadratus plantae ','Quadratus plantae muscle','Tuber calcanei','To m. flexor digitorum longus tendons ','Flexio digitorum');
INSERT INTO musclesearch_content VALUES(157,163,'Mm. lumbricales pedis (4) ','Lumbricales pedis muscle','From m. flexor digitorum longus tendons ','To m. extensor digitorum longus tendons (II-V)','Flexio phalangis proximalis, extensio phalangis mediae et distalis');
INSERT INTO musclesearch_content VALUES(158,164,'Mm. interossei dorsales (4) ','Dorsal interossei of the foot','Metatarsal bones (I-V)','Phalanx proximalis (II-IV)','Abductio digitorum (II, III, IV) ');
INSERT INTO musclesearch_content VALUES(159,165,'Mm. interossei plantares (3) ','Plantar interossei of the foot','Metatarsal bones (III-V)','Phalanx proximalis (II, III, V)','Adductio digitorum');
INSERT INTO musclesearch_content VALUES(160,166,'Mm. intercostales externi','External intercostal muscles','Upper rib from tuberculum costae to cartilago costae','Lower rib from tuberculum costae to cartilago costae ','Inspiration muscle');
INSERT INTO musclesearch_content VALUES(161,167,'Mm. intercostales interni','Internal intercostal muscles','Lower rib from angulus costae to margin of sternum','Upper rib from angulus costae to sternum ','Expiration muscle');
INSERT INTO musclesearch_content VALUES(162,168,'Mm. subcostales','Subcostal muscles','Lower rib angulus costae region','Fibres bypase one rib and reache next rib in angulus costae region ','Expiration muscle');
INSERT INTO musclesearch_content VALUES(163,169,'Mm. levatores costarum','Levatores costarum muscles','Proc. transversus vertebrae cervicalis VII et vertebrae thoracicae I-XI','Angulus costae ','Inspiration muscle');
INSERT INTO musclesearch_content VALUES(164,170,'Mm. transversus thoracis','Transversus thoracis muscles','Corpus sterni et proc. xiphoidei (posterior surface), cartilagines costarum VI, VII ','Internal surfaces of III to VI ribs ','Expiration muscle');
INSERT INTO musclesearch_content VALUES(165,171,'M. rectus abdominis ','Rectus abdominis muscle','Proc. xiphoideus, cartilagines costarum V-VII','Os pubis - between symphysis pubica et tuberculum pubicum ','Flexio trunci');
INSERT INTO musclesearch_content VALUES(166,172,'M. pyramidalis','Pyramidalis muscle','Ramus superior ossis pubis','Linea alba ','Tenses linea alba');
INSERT INTO musclesearch_content VALUES(167,173,'M. obliquus externus abdominis','Oblique external abdominal muscle','Facies externa costarum V-XII','Crista iliaca, linea alba (lig. inguinale) ','Flexio trunci (bilateral contractions). Turns trunk to oposite side (unilateral contractions) ');
INSERT INTO musclesearch_content VALUES(168,174,'M. obliquus internus abdominis','Oblique internal abdominal muscle','Lig. inguinale lateral part, spina iliaca anterior superior, crista iliaca, fascia thoracolumbalis ','Costae X, XI et XII, linea alba ','Flexio trunci (bilateral contractions). Turns trunk to the same side (unilateral contractions) ');
INSERT INTO musclesearch_content VALUES(169,175,'M. transversus abdominis','Transverse abdominal muscle','Lig. inguinale, spina iliaca anterior superior, crista iliaca, fascia thoracolumbalis, internal surfaces VII to XII ','Linea alba ','Increases intraabdominal pressure');
INSERT INTO musclesearch_content VALUES(170,176,'Mm. quadratus lumborum','Quadratus lumborum muscle','Lig. iliolumbale, crista iliaca ','Costa XII','Extensio trunci (bilateral contractions), lateroflexio trunci (unilateral contractions)');
CREATE TABLE IF NOT EXISTS 'musclesearch_segments'(blockid INTEGER PRIMARY KEY, block BLOB);
INSERT INTO musclesearch_segments VALUES(1,X'00013103010200010130030a020002013003600200020131036102000201320362020002013303630200020134036402000201350365020002013603660200020137036702000201380368020002013903690200010131030b0200020130036a0200020131036b0200020132036c0200020133036d0200020134036e0200020135036f020002013603700200020137037102000201380372020002013903730200010132030c0200020130037402000201310375020002013203760200020133037702000201340378020002013503790200020136037a0200020137037b0200020138037c0200020139037d0200010133030d0200020130037e0200020131037f020002013204800102000201330481010200020134048201020002013504830102000201360484010200020137048501020002013804860102000201390487010200010134030e020002013004880102000201330489010200020134048a010200020135048b010200020136048c010200020137048d010200020138048e010200020139048f010200010135030f0200020130049001020002013104910102000201320492010200020133049301020002013404940102000201350495010200020136049601020002013704970102000201380498010200020139049901020001013603100200020130049a010200020131049b010200020132049c010200020133049d010200020134049e010200020135049f01020002013604a001020002013704a101020002013804a201020002013904a30102000101370311020002013004a401020002013104a501020002013204a601020002013304a701020002013404a801020002013504a901020002013604aa0102000101380312020001013903130200010273740a3201050400380103060000013203020200010130031402000101310315020001013203160200010133031702000101340318020001013503190200010136031a0200010137031b0200010138031c0200010139031d020001026e640f1e010307004b0105050001010505000001330d03020066010105003601010500010130031e0200010131031f02000101320320020001013303210200010134032202000101350323020001013603240200010137032502000101380326020001013903270200010272640a6901050b000101050b000001341704020064010104000201010500330101050001010105000101300328020001013103290200010132032a0200010133032b0200010134032c0200010135032d0200010136032e0200010137032f020001013803300200010274680a69010506000101050700000135030502000101320331020001013303320200010134033302000101350334020001013603350200010137033602000101380337020001013903380200010274680a690105080001010308000001360306020001013003390200010131033a0200010132033b0200010133033c0200010134033d0200010135033e0200010136033f02000101370340020001013803410200010139034202000001370307020001013003430200010131034402000101320345020001013303460200010134034702000101350348020001013603490200010137034a0200010138034b020000013803080200010130034c0200010131034d0200010132034e0200010133034f02000101340350020001013503510200010136035202000101370353020001013803540200010139035502000001390309020001013003560200010131035702000101320358020001013303590200010134035a0200010135035b0200010136035c0200010137035d0200010138035e0200010139035f0200000161052801040800010862646f6d696e616c14300102020077010204000101020400010102030009026973053001010600070269731c300103070075010104010203000201010500010101050001010104000305756374696f553e01050200060105060008010504000801050400010105040004010502000501050200060105020006010502000401050700010105020001010502000201050200170105040001010504000b01050200090105020008016e053c0105020006026f722d59010103010202000501010301020200030102020003010103010202003101010301020200030101030102020002036f76650f180104020030010303004701040500020675646374696f0698010105020001076368696c6c6973158b01010405000101040500010104050001010405000206726f6d69616c053c010202000802697314200104060014010406000701030300010101050006026f6e0f20010404001401040400080103020002027473370801050200170105180008010511000101051100010105110008010507000101050a00010105070002010509000401050500010105060001076464756374696fa0012f010502000101050200050105020006010502000201050200030105020002010502000101050400040105060007010504000a010504000a0105020001010502000601050200020105040001010504000a0105050007010504000101050400010105040001010502000101050200050105060002010508000301050600010105060001010506000301050600020105060005010502000301050200050105020006026f722d620101030102060001010103010206001b0101030001010103010202000101010301020200170101030102020001036c61650503010304000403717565080c010106010205000202626118a60101040301050400010104050001010408000101040300020876656f6c617269730f0b010303000801030300030103030001076e636f6e657573084a010103010202000201647a05010506000101050600010105090005010407010506000401050800010105080004010508000701050600010105060002010511000b0105070b00010105070b00010105070b00010105070b00040105050005010505000101050500300103040001010407000101050700010105060029010304000f010406000203676c65350e010405010504000201040501050400010104050105040001010405010504000101040501050400010104050105040001010504000303756c69100e010104010203000601010401020300050275732433010405000501040200080103020061010305010405000101030401040b00010104020002097465627261636869695e44010503040001010503040001010503000101050300010105030001010503000101050300010105030400010103060004010307000101030700010105030001010503080006010309000101030800010103070001010307000101050300040472696f727f170101040102020004010105010202000c01010401020300050101050102040003010303000101030300030101040102030013010307000a01030300010103030001010303010403001d01030701050400010103070105040001010304000701030400030103020001010304000a0101040102030022010308000101030600080161057201030c000802697305270104050006027573052b01040300010a706f6e6575726f7369730f4d010402001a0103050034010304000804746963610a050104030001010303000104726375730b02010302008b0101030700020672616e676564080d01030301040300020274740697010103100001017323080105030029010508000101050b0001010508000201050a0004010506000101050700020570657261651e790103050001010305000401040500010104050001010405000501030500020a746f6e6973686d656e740a050105130001010513000101741e0e010403000201040300010104030001010403000101040300010104030002066c616e7469730f2b0104040001010304000101030400010a75726963756c61726973181701010301020300010101030102030001010103010203000103776179056a0105090000086261636b77617264190101050b001801050400030105070001010507000201050700020773696c617269730a2a010403000201040300040173b6011401030200010103020009010402002e01040200030104020001010402000101040200030104020001010402000101040205000101040205000101040200010104020001010402000101040200010104020500020104020001010402000101040200010104020001010402000101040200010104020001010402002101040200030104020001010402000b0104020001010402000101030701040200010103060104020001010302010402000101030200010104020001056568696e640a2801040600460103040002036c6c79141b0102030001010203000901020300010102030003026f7705490103030002036e64732f1f01050a00080105040800010105040800010105040800010105040b00010105040b00010105040b00010105040b000205747765656e1e53010505001701030200050103040001010304000f0103060026010404000105696365707320440101030102060001010103010206003f01010301020600010101030102060002076c61746572616c41030105020001010502001b0105020008010502000101050200010105020001010502000101050200010105020001010502007a010504000101050400020105040001046f6e65730f6a010304003401030300010103030001097261636869616c6973084601010301020200060169792e01050300010105030500010105030500030105060002010503040500060105030405000101050304040001010503040500010105030001010504000101050304050001010504040001010503050001010503040500010101040105070001010104010507000201010401050504000101010400010101040006096f72616469616c697308530101030102020002036576650a45010106004001010600040269736d550101060102050005010105010204000401010501020400010101050102080001010105010208000501010601020500020101040102030017010104000c01010401020300090101050102040001010105010204000201010501020400030101060102050002010105010204000109756363696e61746f72081301010301020200010179197801040200010104020001010402000101040200010104020002047061736506a20101040300000863616c63616e65692d8b0101040307000101040307000101040307000101040307000701030300030103030003010303000101030300070275730b930101030200010103020002046e696e61050e0103030002077069746174756d05620103030005026973182a0101040102030002010104010203000101010401020300030573756c616506970101030f00030275744c440101050001010105000201010500010101050001010105001601010600010101060002010105000101010500210101050104020001010105010402000601010400010101040001010305000203727069284c010104010203000201010401020300060101040102030001010104010203000301010401020300');
INSERT INTO musclesearch_segments VALUES(2,X'000a63617274696c61676573050b010402000804696e65730f2f010305007501030900010103040008016f12220104020001010302007d0103080104080001096572766963616c6973322701030500010103050001010305000101030500010103040a01040707000c01030500010103050001010305006a0103050001056865656b73051301050a000202696e0816010405010507000108697263756c617279080d0103040104040001086c61766963756c610532010508000901651e1f0103040001010407000e010304000401040400020104070007010304000901720a2e010202000d010202000a0269730a2e010106000d0101050002046f7365730a0901050200040105020001076f636379676973056e01030e0002096c6c61746572616c65055d01030700040169082b010104010203000303756d6e14200105080014010508000201050c000101050c0002086d7072657373657305130105080002066e64796c757324830101040200030103020001010302000401030200010103020002010302000101030200030674696e7565730f250104020001010402004b01040200040772616374696f6e301f0105030800080105030800010105030800010105030800010105030b00010105030b00010105030b00010105030b000b01731f030105030800010105030800a3010105050900010105050a00020105050600020d7261636f6272616368616c69730543010202000b0569616c6973054301010300060569646575730f31010403001201030300020103030003086f6e6f69646575730a01010403004a010306000303707573122b0103020104050018010402006101030200030772756761746f72080701010301020200020373746106aa01010402000501654c270104060001010404000101040200090103040001010304000201030e00040104040001010404006601030605010406050001010306010406000101030501040c0001010403000501040200050372756d212f01030600020103040072010104010203000101030a0001010305000201030400010572697374613a2e010402000101040200010104020005010302010402000b010402000201040500340104020031010402000101030a00010103080001010304000204757269736a780105030001010503000101050300010105030001010503000501050505000101050505000101050505000101050305000101050305000101030a000101030a00010103070003010509000101050900020105030001010503050001010309000101030a000101030500010875626f696465756d0697010103030002086e6569666f726d651586010104070003010407000d01030300010103050009026961069001010405000004646565700a6001020200310103050002056c746f69640f3b0102060001010206000101020600070265610f3b0104030001010403000101040300080275730f3b0101030001010103000101010300020770726573736f72101401010301020200010101030102020001086967617374726963051b01020600090161051b01030300090275730d1b01010300010101030102060003036974695657010104010203010503000d010104010203010405010503000101010401020301040501050300010101040102030105030032010104010203010405010505000101010401020301040500010101040102030105050006026d690699010105030005046f72756d704f01010401020300010101040102030006010104010203010503001201030401040a00010105030001010503001d010104010203010505000a0101040102030002010104010203010405010503000801010401020300010104050105030001010305010405000101050300010105030002056d706c657305160105040002067374616c65730691010104030006026973425001040401050400010104040105040005010407000101040700040104040001010407000c01050a001f010405000101040300090105060001010403000b0105090001056f7273616c0a6a010202003401020200060265730a6a0101040034010104000401690835010104010203000203756274051601050b000206776e776172645a0701050800040105060009010508000101050b0005010505000101050500030105050002010513000101050500010105040001010505000101050500010105050001010505000b0105060001010509000201051300060105050000036561721817010403010503000101040401050300010104030105030001076c657661746573460c010502000e0105060001010506000501050b0003010507000101050700010105070001010507000c010502000201050b0002010502000101050200010105020001010502000602696f05330105050008016e0a0101050200010105020001086d696e656e746961056d0104020001076e6c6172676573050c01050a00010a7069636f6e64796c7573414a010302000101030200010103020001010302000101030200010103020005010304000101030200010103020001010302000101030200050103020023010406000306706879736973054a01040200010174ab0113010305002001040401050400180104040001010406000501050500020105070001010303000501030500010103050007010304000d01030c00010103080001010308000d0103040001010304000101030800080104040001010507000101050500010105050001010505000101050500010105050003010305010505000101050800010105050006010503000201050300030105080006010307000101030400010104070003010405000208696e6163756c756d0a5e01030200010103020001067870616e6473050a01050200030769726174696f6e143a01050800670105020001010502000201050200030772657373696f6e320501051100010105110001010511000901050b000101050b000101050d000101050c000101050a000101050d000101050900020674656e73696fb401350105040007010506000101050400030105040001010505000601050204000101050200010105020001010502000a010502000101050200010105020400010105020001010502000201050200010105020001010502000c010505050006010502000a010502000101050200010105020001010502000101050200040105070002010502000101050200020105070001010502000101050204000101050204000b01050200010105020009010505000d0105020006026f7270540101030102020001010103010202000101010301020200010101030102020001010103010202000201010301020200010101030102020001010103010202000c010409001f0101030102020001010103010202000b01010301020201040400010101030102020104040009010404000403726e61732001030400130103030001010304000901050700020105030002010503002a01050600010105060002010505000101050c000101050c000201050500010105030001010503000101050300010105030001010503000601050700010105070001010507000501050500010105050022010303000701651431010303000401030d000401040300010104030007016c140b010405006c010302002901020200070102030006016906a00101010400060275730d77010104010203003001010400030772656d69746173191f0103020001010405000e01030200060104050007010302000106796562726f770a060104050001010405000701730f05010505000101050500010105070003036c69640509010504000601730a05010509000101050900000466616365051f01051400030369616c0a0501051000010105100004026573a7010301030200250104020007010302000201030200010103020104020001010302000201030c00040104020001010402000c01030600050104020005010302000101030200010103020104020006010306000101030200010103020001010302000101030200010104020011010302080001010302000101030200020103020014010305000101030500010103020007010402000101030200010103020009010402000d0103020002047363696132010103040011010302000501030200010103020006010302001701030400170103050022010311003a01030c000101030a000601650d710101040102030020010309000108656d6f72616c697305780102030005026973ac016b01050306000101050306000201050305040001010503070700010105030707000101050800010105030500010105040001010504000101050400010101040102030105040400010105040001010104010505000501040401050304050001010503040500010105030405000101040801050305040001010503000101050300010105030001010104010207000101010401020701050800060103040001010304000201030400010103040003027572057b010306000105696265727305010105070003037265730e0d010302010402009501010402000303756c6110890101030200010103020008010302000601651a8401010403000101040300030103040005010306000301030600060372697311890101010301020200010101030102020002046e676572055701040900060173205601040a001201040601050d000101040701050900010103090104060105080001056c6178696f0551010502000203657869054b0105020005016f93022e010502000d01050400010105040007010502000101050200010105020600010105020006010502000101050200010105020001010502050500010105020505050001010508040002010502000c010502000101050200050105020003010502000301050208000101050208000101050200040105050007010504000501050200010105020001010502000201050400010105040001010504000101050200010105020004010502000101050200010105020800010105020800010105020001010502040001010502000101050200010105020400010105020800030105040001010502000101050400010105040001010502000201050205000101050200010105020008010502000201050200010105020004026f72774c0101030102020002010103010202000101010301020200010101030102020001010103010202000e0101030102060001010103010206000501010301020200030103030029010103010202000101010301020200040101030102020003010103010202000201010301020200010104040001010304000602756d235e0103030001010303000201030300030103050001010306000101030600010103030001046f6c6473051201050b0002026f740b9e01010206000101020600020572616d656e0a720104040001010404000503696e61057201030a000303636564051f01051a00030565686561640f0501050f000101050f0001010510000304776172643c0301050700010105070009010507000a010504001001050700010105070001010507000101050a000101050a000101050a000101050a000401050400');
INSERT INTO musclesearch_segments VALUES(3,X'0005666f7373613c04010302000a010302000d0103020023010302000101030200030103020029010302000101030200070104080001010402000101040200020104020002037665610503010402000103726f6d1f6a01050a0008010307002b010302000301030401040400010103040104040003066e74616c69730d06010103010202000601030300000567616c65610a05010402000101030200020a7374726f636e656d6969068c01010103000b0275730e8b010101030102060001010206000107656d656c6c7573107401010301020200010101030102020002086e696f68796f69640524010202000a0365757305240101030001076c6162656c6c61050701030200020475746561156e010303050104030001010303050001010303050005027573186e01010301020200010101030102020001010103010202000107726163696c697309810101010301020200000868616c6c75636973578801010104010203010404010505000a010104010203010404010509000201010401020301040501050300010101040102030104050105030400010101040102030104050105030001010104010203010405010503040002046d6174690a650103040001010304000502756d054e010405000304756c75730a650103020001010302000103656164691f01050608000b0105060b00010105060b00010105060b00010105060b0001010203000101020300150102030001010203000201020300010102030001010203001601020300010102030002010203000101020300210102030001010203000601020300010102030002036c697805170104020001096f72697a6f6e74616c0a0501050b000101050b000105756d657269732e010405000101040500010104050005010405000901040400010104040001010405000101040400010104040001010403000701030400010103040001010304000101030400010103040001010304000401030400010103060001010304000101030400010103040001010304000501030400050275730f4601030200020103020001010302000107796f696465756d451a010403010508000101040301050800010104030105040001010403010504000401040301050400020104030105040001010403010509000101030301050400010105040000016950270104070001010405000a01030500010103050003010306000101030a0001010306000101030a000101030a001f0104050008010405000c010307001901040500030104050015010304000501030a000101697e2901040300060103070002010305000801030b010405000101030b00120104050003010405000101040500040104050002010408001201040401050b0001010304010404000101040400080103080015010506000a0104040002010408010504000401030a0a000401040500020104080001010404010504000101040400020169382a010306000101030800210104070009010405000e0103040030010409010505000401030b000701050500010103040104050005010405000305e2809369760527010306000205e280936976052b01040800050176052b01030d000602696905280103060001056c69616361343501030300360103030001010303000501030300070103030004010303002b01040300010103070600010103050600010103050005027573086b0101030102020003086f6c756d62616c6506aa01010303000406707562696361056d01040300040874696269616c69730d6e01040500030104050105040001016e1e160105050009010519000801051200010105120001010512007901040a000206636973757261051c01030200030672656173657306a90101050200020564696369730e5c010104010203010408010503000206666572696f724026010105010202000c0104030001010406000701010501020400060103030030010309000501010401020300030103050006010203000201030300010103030008026973081501010501020400030c7261676c656e6f6964616c6505470103030005096f72626974616c6973050f0103030005077370696e617461053f010303000b027573083f01010301020200050a74656d706f72616c697305030103030002076775696e616c6510a701010407000101030300010103030002036e65720573010302000209737069726174696f6e371f01051b0008010513000101051300010105130008010509000101050c0001010509000201050b000401050700670105020003010502000209746572636f7374616c0ba0010102030001010203000b0265730ba00101010300010101030005066d6564697573087b010104010203000608757363756c6172650f5301030600010103080035010304000d026961068a010103040005026e614b2f010505000101050500050105070006010507000501050700020105050001010507002c01050700010105070001010507000f010505000101050700010105070001010507000c0105050007016c15a10101020200030104020004010203000101030c0006016906a10101010400060275730d7301010401020300350101040005056f73736561375001030600010103060008010308000101030700010103060001010306002a010309000101030900010103060008010308000201030400090169206901010301020300010101030102030034010103010203000101010301020300050d74726f6368616e74657269636105760104030003016f0f250104030001010403004b01040300030b72616162646f6d696e616c06a9010105030001097363686961646963610574010303000902756d2872010405000101040500020103030001010303000a01030a00020103030001010303000101030300050169068001010308000101762c360103070002010307003101030501040500010104050008010309002101040a010506000b010405010506000101780f33010306000201030f00050104050000056c61626969180c01010401020300030101040102030006010104010203000402756d1e79010302000101030200040104020001010402000101040200050103020002066372696d616c0b0a01020201040201050400080165050a0103030008026973050a0101060002046d696e610a03010308002d01030200020472796e780a22010503000101050800020374616508710101050102040003046572616c1e0301020200450102020044010202000701030500050103040010010304000701652809010404003f010106000b01030700010103090026010303000b0103030007010105000b01030600070269737503010104010309002901030300010101050102040104030014010303000901030300010104050008010303000101030500010103030001010303000101030300010103030005010303010403001d010104010203000c01030305000101030305000501030300020103030001010303000b0104030007026c79230301050d000101050d000c010509000101050900010105070001010507005f0103060005076f666c6578696f06aa01010506000307697373696d75730835010103010202000206756768696e670f1001050f000101050f0001010511000106657661746f72200c010103010202000201010301020200010101030102020029010103010202000702657309a301010103010202000106696674696e670a05010502000101050200040173190e010502000101050200010105020001010502000e0105040002016760080103020104020001010302010402002e01030b0026010306001101030f000a0104030001010403000101040300010104030001010403001a010305000101030c00020103060001010306000d0104060001010302000101030200010103020002036e65614e050103020015010302000501040400010103050014010305003a01030500010103050001010305000d010402001001030200020104060017010402010503000101040400010104070001010402000501651e790103040001010304000401040400010104040001010404000501030400020170180c0104060105080003010406010505000601040601050a00030173050d0105040001026f670a2001030800140103080002026e670f440102020003010202003d010202000402756d23440101060003010106003d0101060012010307000101030e000201030800010103080005017384012a0101030102020001010103010202002201010401020300040101050102040003010106010205000501010501020400020101050102040006010204001e0101040102030008010105010204000101010501020400010101040102030008010105010204000101010501020400010104060001010406000801040600010103060104060002037765722615010405010509000b01050e001401050e0012010303005a01040200010103020001010302000107756d62616c65730a3a01030900330103060004046f72756d09aa01010104010203000405726963616c056801020200090265730d68010103003501010301020200');
INSERT INTO musclesearch_segments VALUES(4,X'00016db70601010102000101010200010101020001010102000101010400010101040001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200020101020001010102000101010200010101020001010102000101010200010101020001010102000101010201040300010101020001010102000101010200010101020001010102000101010200010101020001010102000101010201030500010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010302010408000301010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020001010102000101010200010101020103030800010101020001010102010407000101010200010101020001010102000101010201040300010101020104030001010102000101010200010101020001010102000101010200010101020001010102000101010201040300010103030104030008010102000101010200010101020001010102000101010200010561676e75730980010101040102030002036a6f724710010104010203001e010104010207000101010401020700010101040102070006010104010203000a010104010203002c01010401020300030104030001010403000201040900050269731403010305002b010404000101040400010104040003027573143e0104030001010403000201040300310104060002066e6469626c652b010105050700010105050001010506080001010506080016010504000101050400030105040006010504000604756c61652d01010404000101040400010104040001010404000f010306000101030300010103030001010304000801040300030675627269756d0f1f0103050002010302000101030200040173374c0105030400010105030001010503040001010509000101050c000101050b00030105030400010105030400010105050002010503040002047267696e06a1010103080004016f320701030300080103020017010302000d01040200030104020001010402000a010302000d01030600050103020001010302000203737361052c0103020004046574657208020101030102020008036963610a020104030010010303000306746f69646561051c0103030008027573051901030300020678696c6c6165140b0103040001010304000301030400040103040004036d7573086e01010401020300010464617368261001050a06000101050a06000101050c06000101050b0001010509000101050c00010105080001066564616c69730a4d0103030002010303000302696106870101040300050165334f0104040105040001010507000601040400010104040005010404000c0105070029010507000a01040401050400020105070005016c0f0401020200450102020042010202000601653a08010304010404000101030400400101060030010303000501040300010104030001010403000601040800030104080002010105000b01030400060269733f04010104002f01040300030104030001010403001401030300010103030002010303002b01010401020300070104070003010403000501030300030103030006026c79050701050a0004027573102801010401020300470101040102030002066d6272616e61375001030500010103050008010307000101030600010103050001010305002a0103080001010308000101030500080103070002010303000801650a7301030500040103050002066e74616c69730d16010103010202000e010303000208746163617270616c056a010303000a0165144e010407001501030300030104030003010303000a0269731e4c0104040008010404000101040400030104040001010404000801040400040674617273616c0b9e010103020001010302000a0165068701010407000a02697327860101040400030104040001010404000d01030900010103080001010304000101030401040500080b6f7068616c616e67656165069701010311000105696e696d695957010105010204010504000d01010501020401040601050400010101050102040104060105040001010105010204010504003201010501020401040601050600010101050102040104060105040001010105010204010506000502757308700101040102030003026f72321101010401020300200101040102030006010104010203000a010104010203002a0104030001010403000101010401020300050269730f35010404000b010404000201040700030275730a4201040300310104060001016d3c68010102000101010200010101020033010102000101010200010101020001010102000101010200010101020001010102000101010200060101020001046f757468350e0104080105070002010408010506000101040801050600010104080105060001010408010506000101040801050700010105070001057573636c65a7060101020300010102030001010204000101020400010102030001010203000101020400040102030001010207000101020400010102050001010205000101020401051000010102040105100001010203010512000101020300010102050001010205000101020300010102040001010204000101020400010102030001010207000101020700010102030001010203000101020300010102030001010203000101020300010102030001010203000101020700010102070004010204000101020400010102050001010205000101020800010102080001010208000101020401050a000101020301050d000101020401050a0001010203000101020401050c0001010204000101020400010102040001010205010508000101020501050900010102070001010207000101020700010102030001010203000101020400010102040001010203000101020300010102070001010207000101020300010102070001010207000101020700010102030001010204000101020500010102040001010205000301020500010102040001010203000101020600010102060001010204000101020500010102050001010205000101020500010102050001010204000101020300010102050001010209000101020900010102050001010208000101020800010102050001010206000101020500010102040004010203000101020400010102040001010204000101020400010102040001010205000101020300010102040001010204000101020400010102040001010204000101020400010102040001010204000101020400010102030001010203000201020400010102040001010203000101020300010102030001010208000101020800010102040001010205000101020500010102040001010204000101020700010102070001010203000101020300010102030001010204000101020500010102050001010205000101020500010102040001010205000101020400010102050001010206000101020500010102050001010204000101020400030105030001010503000101050300010105030001010503000101020400010102030001010205000101020500010102040001010204000601732868010203000101020400010102040036010204000101020400010102030001010204000101020400010a796c6f68796f64657573051a01020200070469646561051a010303000a027573051a0101030000016e0a4801030500010103050001046173616c100b01020201050400010104080105040005026973050b01010300030169080c0101070102060003076f6c616269616c051201050a000208766963756c61726506900101040300010365636b2a270105060800010105060800010105060800010105090b00010105090b00010105090b00010105090b000202787406a2010104080001036f7365050b0104060003057472696c730a0b01050c000101050f00010575636861650f200103090014010309000301030c0005036c69731405010303001a010405000101030600140103060000076f626c697175650f6201020200450102020001010202000602756d0562010106000701730ba701010103000101010300020774757261746f72107301010301020200040101030102020009036961650a73010306000401030600010a636369706974616c69731e05010103001b010303000a01040500020104050001010405000701030300070a6f66726f6e74616c69730a050101050001010105000307706974616c69730505010202000203756c69140801010400010101040001010104000301020300010166b50201010503000101050300030105030c0700010104030105030c0700010104030105050b06000401040301050a000101040301050d0002010406010505000101040300010104060105050900010104060105050900010104060105050b00010104060105050a00010104060105050800010104030105050b000101040301050a00050102040001010204000201030501050900070102040001010204000801020400010102040001010204000b0102040001010204000101020400070102040001010204000101030500010102040001010204000101020400160102040001010204000201020400010102040004010403010503000301030500090103040004010304000401030400090102040001010204000601020400010102040005010307000d0102040001010204000201030900030104040001086c656372616e6f6e1947010402000101040200010104020005010305000a0103050001096d6f68796f64657573052501010300060269640a25010206000101020600080365757305260101030001016e05670104060002016506a201010404000106706f7369746506a701010509000206706f6e656e7315610101030005010103010202003401010301020200040473697465051f01051600');
INSERT INTO musclesearch_segments VALUES(5,X'00096f70706f736974696f195f0105040001010504000101050200050105020034010504000101721923010506000101050600010105060001010506000c010506000209626963756c61726973200801010301020300010101030102030001010103010203000301010301020200040374616c0508010202000702697305080101060002026973150d0101040001010105010204000601010501020400010173ad010a010302000601030200010103020009010402010507000101040201050700010104020105030001010402010503000401040201050300020104020105030001010402010508000101030201050300010105030028010402040400100103040001010304000101030204000101030500010103020001010302000101030200020104020003010302001d0104060001010406000201040600070104020006010302000101030204000e010402000202736106900101040400030269739401030103060001010304002601040400020104040001010404001f0104030008010403000101040300030104030001010403000801040300040103030001010303000801030a050004010304000b010306000101020401030600010103040001010304050001010304000501040300030104030001010403000d010308000101030700010103030001010303010404000c01030400000470616c6d056701040500040261720569010202000602657305690101040006026973164d010103010202010403001a01010301020201030600030670656272616c050901020200090165100801030301040300010103030104030009026973050901010600020272733c0801010500010101050001010105002001040200020104020001010402000101010500010101050001010105000b0101040001010104000101010400030174362001050a070010010203000401050a0700070102030001010203000101020300090103040029010505070001010505070038010305000204737365730a72010402000101040200020674656c6c616519780104040001010404000101040400010104040001010404000105656374656e0a7d0103050001010305000404696e6561057d0104030007027573087d0101030102020004066f72616c6973251e01030300100101030102060001010103010206000101010301020600010101030102020002036469734f86010105030404000101050300010105030800010105030600010105030600010105030600010105030600010105030600010105050002010503060001010503000101050306000b0101040102030002056c76696361057201030300010868616c616e676573069101010402000702697391014f010403010503050001010403010503050500010104030105030005010403050001010403050003010403010503000101040300010104030500020104030001010403000101040300020104030001010403000101040300010104030003010503050500290105050004010403000101040300010104030001010403000101040300020104030105030500020105030500060178286801040200010104020001010402001d0104020001010402000a010402000c0104020001010402000109697269666f726d697308720101030102020002077369666f726d650a4e01040300160103030001066c616e746165099c0101010401020300060172069f0101020200070165159601010306000101030d0002010307000101030700080173069f0101010400070269730e8e01010103010202000d010305000402756d0501010302000302746506910101030600040479736d61081e0101020102020002066561737572650f1001050d000101050d000101050f0001076f6c696963697305510105090003056c696369738801510101040102030104050105070008010104010203010503000101010401020301040501050500010101040102030104050105030003010104010203010405010503000101010401020701040501050304000101010401020701040501050304000101010401020301050300010101040102070104050105030001010104010207010405010503000207706c6974657573098f01010103010202000206736974696f6e0553010504000306746572696f7280010101050600180101040102020104020003010105010202000d0101040102030010010104010203000101010401020300110104030003010307000a010307000101030300010103030001010303000101030300120103070400010103090105090001010509001f010403000101010401020301030300010103030013010307000702757306890101030500010c7265736572766572616e6365051501050f0004047375726506a9010105040002026f6310a3010103020001010305000101030200040565737375738f0101010402000201030a0008010302000101030200070103020003010302000301030200040103020002010402000101030a0007010302000101030200010103020001010302000101030901040900020103020004010402000301030a00010103060001010302000101030200010103020001010302000101030200090103020002010302000601030500080104020003056475636573190501050a000101050a000101050b000b010508000c010506000503736573051601050200030666756e64756d0560010107000801730d5001010501020400180103050003056e6174696f194b01050400070105020001010508003601050600010105060006026f72104b0101030102020007010103010202000306747275646573050d01050500040975626572616e7469610a20010302001401030200030778696d616c697383014a0104030005010507000101050a0001010506000901040401050400040104040001010404000101040400020104040001010404000101040400010104040003010403010504000101040300010104030027010509000401040400010104040001010404000101040400010104040002010507000201050400010104030001010403000104736f6173106c010103010202000101010301020200010874657279676f69640a03010203000101020300090265610d030104030001010303010403000a0169050301030b000a0275730a03010103000101010300070c6d616e646962756c617269730513010308000105756269636106a501010406000502756d0a7f01030a002601040900040173267d0103070001010205010307000101030500010103050001010305002401040300010103050002026c6c0a690105040001010504000401739801010105080002010504000101050400030105020004010502000701050200010105020001010502000101050200020105020001010502000101050200010105020001010502000101050200010105020001010502000201050210000101050200010105020001010502000101050200010105020001010502000b0105020001010507000201050210000201050600010105060003010502000204736865730a0301050a000101050a00010a7972616d6964616c697309a601010103010202000009717561647261747573205201010401020300240101030102020026010103010202000e01010301020200000772616469616c65055d010308000602697322480103060001010306000301010501020400080101050102040001010105010204000401692d44010403000101040300060104060006010304000101040400010104040006010306000101030400030104040002036d7573227d01030200010102020103020001010302000101030206000101030200250103020002037068650513010307000105656163686506a20101040700020363746905300103060004027573202c0101030102020001010103010202004b010103010202002d0101030102020002056475636573050b01050700020467696f6e0e1e01030400840101030601040d00020974696e6163756c756d1961010302000301030400010103050001010305000101030200010a686f6d626f6964657573103601010301020200010101030102020001026962231e0103080014010505006e0103030104030001010303010403000101030301040506000301730f390105040001010504006a010408000206736f7269757308120101030102020001066f746174696fa7012f01050400010105040003010502000201050600060105060002010506000201050200010105060001010502000101050400010105060028010505000101050500020105040001010506070001010506070001010506000101050400010105020001010502000101050200010105020001010502000601050600010105060001010506000101050400010105060001010506000101050600010105040001010504000a010504000003736163080a01040301050500030572616c6961057201030b000401690a6e01030b00040103050004096f7475626572616c65056e010310000205646e657373051401050c0002026d652d1f01050f000801050f000101050f000101050f0001010515000101051500010105150001010515007b01050a00020772746f72697573087c01010301020200020a74697366616374696f6e051301050e00010663616c656e690527010404000602757318270101030102020001010103010202000101010301020200030870686f696465756d0a5e0103050001010305000403756c61252001050400050105080001010508000e01050400020105040600010105040600010105040007016554200104030006010304000b01040400020104070105030001010403000201040400010104040001010104010203010404000501030300030103040001010304000201030400010103040001010304000201030400010e656d696d656d6272616e6f737573068301010103000c02757306830101020200040a74656e64696e6f737573098201010103010202000203707461068a01010303000402756d0f530103050001010307003501030300020672726174757318330101030102020006010103010202000101010301020200010468617065050d0105090002036f72740a450102020040010202000305756c646572112001050d070011010503000301050d070001036964653b1f010510090008010510000101051000010105100001010516000101051600010105160001010516003a010308010408004001050a000101050b0002027a650a0b010509000101050c0001036b696e4c0601040200010104020105040005010402000201040200010104020001010402000101040200010104020001010402000101040200010104020001010402000801050b00490104020105050001056c69676874051e0105070001046d616c6c05160105030001046f6c65690c8d010103040800020104080004027573098d0101010301020200010b7068656e6f6964616c69730a030103070001010305000306696e637465720508010504000203696e6132200104020004010302001001040200090103020034010302000301030200040103020004010302002c010306000101030400');
INSERT INTO musclesearch_segments VALUES(6,X'00067370696e616c053d0102020006026973053d0101050004036f73690a2001030b001401030b0006027573193501030700010103030001010303000201030300010103030001087465726e616c69730a1f010303000f01030300050169191f01030600020103030001010303000d010304007501030300050e6f636c6569646f6d6173746f6964051f010202001303657573051f0101030007076f7374616c6973052f01010600060568796f69640521010202000b03657573052101010300060b74687972656f69646575730522010103000a036f69640522010202000502756d09a10101030a0104080004076f636f7374616c052f01020200020b796c6f68796f6964657573081d01010301020200050569646575730f1d010303000201040300340104030001097562636c61766961650528010409000802757308320101030102020004056f7374616c06a201010202000902657306a20101010300030a73636170756c617269730b42010103010202010303000205636b696e67050d0105080002046c6375730f280104070020010304000101030400020870657263696c6969080701010401020300050666696369616c055f010202000b0165055f010107000b026973084f010105010204000503696f727a05010304001301010401020200070104060001010307000501010501020200010103030002010403000a010303000201030700040104030001010105010204003801030500030101040102030008010305000101030300010103030001010303001401030300010103030012010303000201030900010103070008026973100c0101050102040003010105010204000306696e6174696f2d53010506000a01050200290105040002010506000301050400010105040001010504000301050400020105040007026f72085d01010301020200030c7261676c656e6f6964616c6505440103030005096f72626974616c697305070103040005077370696e617461053e010303000b027573083e01010301020200030874696f6e6174696f0a4401050400010105040002057266616365237301030300040103030004010303001801030600010103040004010305000c010308000701730ba401010403000501030d000108796d7068797369730a7f010307002601040500000874656d706f72616c050101020200080165050101030300080269731201010103010305001601030300010103030002076e64696e657573068d010103080004016f198b01010402040001010402040001010402040001010402040005016e0a250104040001010404000601731f6801030601040b002b0104070001010407000801040700010103070104070003037365730a7101050200350105020004026f72087101010301020200020372657318400101030102020001010103010202000a0101040102030001026865cb030101050407000101050400010105050800010105050800010105040509000101040401050405090001010404010503050b06000201050300010105030001010404010503070500010104040105030a05000101050300010104040501050305000101040401050300010104040501050300010104040501050300010104040501050308000101040405010503080001010404050105030500010104040105030500010104040105060002010403000201050300010102050105030001010205000201030601050309000101050508050700010105030508070004010503000101020500010102050001010505080500010105050805000101050508050001010505050805050001010505050805050001010505050805050001010505050805050001010205000101020500010102050002010503000201050305080700020105030605000101050306050001010503000101050300010105030001010205000101020500010102050007010205000101020500020102050001010205000101020500160102050001010205000201020500010102050004010404010504001401030500090102050001010205000601020500010102050005010308000d010205000101020500090105090003016d050d010506000205696e6b657205070105140002076f7261636961650a2001030d001401030d0007026361056d01030300090165232b010307000a010309000101030500010103090002010309000101030500690103090007017309a4010101040102030006096f6c756d62616c697314350103050039010312003a01030d000101030b000205726f7567680a72010403000101040300020c7972656f68796f69646575730523010103000604696465610a2201040300010103030004066f68796f696405230102020001056962696165437801040700010104070001010407000101040700010104070005010403000101040300010104040003010304050001010304050008010404000101030400010103040005036c6973118601010103010202000a0101030102020001016fa2011f01050d0a000801050d000101050d000101050d0001010513000101051300010105130001010513003c01050a00010103070008010407000101040700050104050001010405000101040500010104050001010405000f010406000101040600010104060001010406000501040200010104020008010402000101040200030103070104070001010307010407000301040600030105080001010508000101030f0002047761726414200105050014010505000201050900010105090001067261637475730d6e01040400030104040105030003076e7376657273650a630102020046010202000902756d0563010106000a01733327010303000101030300010103030001010303000101030a01040a0002010303007601030300010101030102020005010103000406766572737573053801030300030670657a69756d0a60010303000101030600080173102001010301020200140101030102020006066f696465756d056001030500020569636570731847010103010206000101010301020600010101030102060002086f6368616e746572196b0104020001010402000301040200010104020002010408000a036963611473010409000101040300010104030002010403000204756e6369246b010509000101050900010105030038010503000201050300010105030002010503060004016b0ba70101050700010105070001047562657246750103020001010302000a0103090002010302000101030200010103020007010407000101040700010104070001010407000701030200030103020003010302000101030200050463756c691e2e010403000101040300010104030005010403000b0104030002010406000802756d3a2701040200040104020013010402000101040200020104020001010402000201030200030103020038010309002101030501040500050104080005066f7369746173500201040200020104020037010402000101040200010104020007010402000101040200010104020028010402000a010406000101040600010104060001010406000101040600050104020001010402000203726e73101f0105120088010105060001010506000004756c6e61055d0103050004016541460104030001010403000101040300010104030001010404000101030700030103080002010304000201030400060103080001010304000201030400010103040004017208670103070104070005026973104e010105010204000a0101050102040001096e696c61746572616c41030105080001010508001b010508000801050800010105080001010508000101050b000101050b000101050b000101050b007a01050b000101050c0002010508000104707065722e0501050800010105080006010405010507000301040501050400110105090014010509006c0103020001010402000204776172641e0c01050900040105070001010507000701050400040105050001010505000001768c012b01030500060103060008010406001501040800010104060001010406000601040900010104080001010405000e010404000201040501050c0001010306010406001e0104080105080003010405000701040500060103130001010309000101030500010103050104060001010406000201040900010103050001010305010406000601030600020103050001066167696e6165053001030400020473747573187901010301020200010101030102020001010103010202000105656e7465721e0501010200010101020015010104000101010400090101040001010104000206727465627261056d010302000801654b270103040001010304000101030400010103040001010303050701040607000a0103080001010304000101030406000101030400010103040600010103040600330103050036010304060008016c14200105070014010507000201050b000101050b00080372756d0a2001030c001401030c0004046963616c050701050c000101691c2a010307000101040d000c0103060002010306006b01030b01040700020169282f010308000601030a00020103070002010307006a010306000101030c0001010307000401030e000106e28093766969052901030600000477696e670d0b010505000101040901050500010772696e6b6c6573140501050c000101050c000101050d0060010502000603696e67051e0105080000017806a801010403000101690f3a010306006901030b000501040400020169273501030b0700050103070104060033010304003a01030600010104060001010310000101040300020770686f6964656906a401010306000802757306a50101030300000b7a79676f6d61746963756d0a100103030001010303000a01731502010303000e0101030102020001010103010202000003e2809306870101050700');
CREATE TABLE IF NOT EXISTS 'musclesearch_segdir'(level INTEGER,idx INTEGER,start_block INTEGER,leaves_end_block INTEGER,end_block INTEGER,root BLOB,PRIMARY KEY(level, idx));
INSERT INTO musclesearch_segdir VALUES(0,0,1,6,'6 23084',X'010104636172740003666f7300016d00086f70706f7369746900067370696e616c');
CREATE TABLE IF NOT EXISTS 'musclesearch_docsize'(docid INTEGER PRIMARY KEY, size BLOB);
INSERT INTO musclesearch_docsize VALUES(1,X'01020204030a');
INSERT INTO musclesearch_docsize VALUES(2,X'010202020304');
INSERT INTO musclesearch_docsize VALUES(3,X'0103030a030c');
INSERT INTO musclesearch_docsize VALUES(4,X'01030304030c');
INSERT INTO musclesearch_docsize VALUES(5,X'010402030212');
INSERT INTO musclesearch_docsize VALUES(6,X'010402020412');
INSERT INTO musclesearch_docsize VALUES(7,X'010303030413');
INSERT INTO musclesearch_docsize VALUES(8,X'010502030303');
INSERT INTO musclesearch_docsize VALUES(9,X'010502030303');
INSERT INTO musclesearch_docsize VALUES(10,X'010502020204');
INSERT INTO musclesearch_docsize VALUES(11,X'01020203050b');
INSERT INTO musclesearch_docsize VALUES(12,X'01060603080e');
INSERT INTO musclesearch_docsize VALUES(13,X'010303030308');
INSERT INTO musclesearch_docsize VALUES(14,X'010404020706');
INSERT INTO musclesearch_docsize VALUES(15,X'010404030504');
INSERT INTO musclesearch_docsize VALUES(16,X'01030302070f');
INSERT INTO musclesearch_docsize VALUES(17,X'01030302070f');
INSERT INTO musclesearch_docsize VALUES(18,X'010202020711');
INSERT INTO musclesearch_docsize VALUES(19,X'01020207070d');
INSERT INTO musclesearch_docsize VALUES(20,X'01040402070b');
INSERT INTO musclesearch_docsize VALUES(21,X'01040402050e');
INSERT INTO musclesearch_docsize VALUES(22,X'01020203040a');
INSERT INTO musclesearch_docsize VALUES(23,X'010303020203');
INSERT INTO musclesearch_docsize VALUES(24,X'010303020303');
INSERT INTO musclesearch_docsize VALUES(25,X'010303020203');
INSERT INTO musclesearch_docsize VALUES(26,X'010202020207');
INSERT INTO musclesearch_docsize VALUES(27,X'010406020207');
INSERT INTO musclesearch_docsize VALUES(28,X'010406020206');
INSERT INTO musclesearch_docsize VALUES(29,X'010202020206');
INSERT INTO musclesearch_docsize VALUES(30,X'01010207020a');
INSERT INTO musclesearch_docsize VALUES(31,X'01020205051a');
INSERT INTO musclesearch_docsize VALUES(32,X'0102020c0612');
INSERT INTO musclesearch_docsize VALUES(33,X'010202020204');
INSERT INTO musclesearch_docsize VALUES(34,X'010202020203');
INSERT INTO musclesearch_docsize VALUES(35,X'010202020207');
INSERT INTO musclesearch_docsize VALUES(36,X'010202020208');
INSERT INTO musclesearch_docsize VALUES(37,X'010406020307');
INSERT INTO musclesearch_docsize VALUES(38,X'010406030307');
INSERT INTO musclesearch_docsize VALUES(39,X'010302050612');
INSERT INTO musclesearch_docsize VALUES(40,X'010302050812');
INSERT INTO musclesearch_docsize VALUES(41,X'010302050212');
INSERT INTO musclesearch_docsize VALUES(42,X'010303060415');
INSERT INTO musclesearch_docsize VALUES(43,X'0103030c0c15');
INSERT INTO musclesearch_docsize VALUES(44,X'010404030415');
INSERT INTO musclesearch_docsize VALUES(45,X'010404030415');
INSERT INTO musclesearch_docsize VALUES(46,X'010507030402');
INSERT INTO musclesearch_docsize VALUES(47,X'010507070405');
INSERT INTO musclesearch_docsize VALUES(48,X'010507060405');
INSERT INTO musclesearch_docsize VALUES(49,X'010303050309');
INSERT INTO musclesearch_docsize VALUES(50,X'01020204030c');
INSERT INTO musclesearch_docsize VALUES(51,X'010303050609');
INSERT INTO musclesearch_docsize VALUES(52,X'0102020c0612');
INSERT INTO musclesearch_docsize VALUES(53,X'0103030f040b');
INSERT INTO musclesearch_docsize VALUES(54,X'01030306030b');
INSERT INTO musclesearch_docsize VALUES(55,X'0103030b030b');
INSERT INTO musclesearch_docsize VALUES(56,X'010303060303');
INSERT INTO musclesearch_docsize VALUES(57,X'0104040a0507');
INSERT INTO musclesearch_docsize VALUES(58,X'0104040a0508');
INSERT INTO musclesearch_docsize VALUES(59,X'010406030207');
INSERT INTO musclesearch_docsize VALUES(60,X'010406010206');
INSERT INTO musclesearch_docsize VALUES(61,X'010406020207');
INSERT INTO musclesearch_docsize VALUES(62,X'010202020302');
INSERT INTO musclesearch_docsize VALUES(63,X'010202020303');
INSERT INTO musclesearch_docsize VALUES(64,X'010303030407');
INSERT INTO musclesearch_docsize VALUES(65,X'010303030305');
INSERT INTO musclesearch_docsize VALUES(66,X'010202020605');
INSERT INTO musclesearch_docsize VALUES(67,X'010202030207');
INSERT INTO musclesearch_docsize VALUES(68,X'010506030206');
INSERT INTO musclesearch_docsize VALUES(69,X'010506030206');
INSERT INTO musclesearch_docsize VALUES(70,X'010202060202');
INSERT INTO musclesearch_docsize VALUES(71,X'010506030206');
INSERT INTO musclesearch_docsize VALUES(72,X'010506050202');
INSERT INTO musclesearch_docsize VALUES(73,X'010506050202');
INSERT INTO musclesearch_docsize VALUES(74,X'010202030302');
INSERT INTO musclesearch_docsize VALUES(75,X'010303060504');
INSERT INTO musclesearch_docsize VALUES(76,X'010404050604');
INSERT INTO musclesearch_docsize VALUES(77,X'010303030202');
INSERT INTO musclesearch_docsize VALUES(78,X'010404070704');
INSERT INTO musclesearch_docsize VALUES(79,X'010403030508');
INSERT INTO musclesearch_docsize VALUES(80,X'01040306050b');
INSERT INTO musclesearch_docsize VALUES(81,X'01040406040a');
INSERT INTO musclesearch_docsize VALUES(82,X'010303030302');
INSERT INTO musclesearch_docsize VALUES(83,X'010202060308');
INSERT INTO musclesearch_docsize VALUES(84,X'010505080404');
INSERT INTO musclesearch_docsize VALUES(85,X'010505030404');
INSERT INTO musclesearch_docsize VALUES(86,X'010303030904');
INSERT INTO musclesearch_docsize VALUES(87,X'010404030803');
INSERT INTO musclesearch_docsize VALUES(88,X'010404070404');
INSERT INTO musclesearch_docsize VALUES(89,X'010404080402');
INSERT INTO musclesearch_docsize VALUES(90,X'010404070404');
INSERT INTO musclesearch_docsize VALUES(91,X'010404060402');
INSERT INTO musclesearch_docsize VALUES(92,X'010303060702');
INSERT INTO musclesearch_docsize VALUES(93,X'010202070302');
INSERT INTO musclesearch_docsize VALUES(94,X'010404040402');
INSERT INTO musclesearch_docsize VALUES(95,X'010608040404');
INSERT INTO musclesearch_docsize VALUES(96,X'010608040404');
INSERT INTO musclesearch_docsize VALUES(97,X'010304050402');
INSERT INTO musclesearch_docsize VALUES(98,X'010507020402');
INSERT INTO musclesearch_docsize VALUES(99,X'010507030402');
INSERT INTO musclesearch_docsize VALUES(100,X'010404040503');
INSERT INTO musclesearch_docsize VALUES(101,X'010505050503');
INSERT INTO musclesearch_docsize VALUES(102,X'010404050303');
INSERT INTO musclesearch_docsize VALUES(103,X'010303070704');
INSERT INTO musclesearch_docsize VALUES(104,X'010302050a0c');
INSERT INTO musclesearch_docsize VALUES(105,X'01040305060a');
INSERT INTO musclesearch_docsize VALUES(106,X'01040308050a');
INSERT INTO musclesearch_docsize VALUES(107,X'010202020208');
INSERT INTO musclesearch_docsize VALUES(108,X'010303020208');
INSERT INTO musclesearch_docsize VALUES(109,X'010303060202');
INSERT INTO musclesearch_docsize VALUES(110,X'010303110407');
INSERT INTO musclesearch_docsize VALUES(111,X'01030308020c');
INSERT INTO musclesearch_docsize VALUES(112,X'01030308020c');
INSERT INTO musclesearch_docsize VALUES(113,X'010404040407');
INSERT INTO musclesearch_docsize VALUES(114,X'0102020b0805');
INSERT INTO musclesearch_docsize VALUES(115,X'010303050803');
INSERT INTO musclesearch_docsize VALUES(116,X'010303020203');
INSERT INTO musclesearch_docsize VALUES(117,X'010303020203');
INSERT INTO musclesearch_docsize VALUES(118,X'010303020205');
INSERT INTO musclesearch_docsize VALUES(119,X'010303050203');
INSERT INTO musclesearch_docsize VALUES(120,X'010303040604');
INSERT INTO musclesearch_docsize VALUES(121,X'010303040602');
INSERT INTO musclesearch_docsize VALUES(122,X'010303040602');
INSERT INTO musclesearch_docsize VALUES(123,X'010303050602');
INSERT INTO musclesearch_docsize VALUES(124,X'010202040602');
INSERT INTO musclesearch_docsize VALUES(125,X'010202060307');
INSERT INTO musclesearch_docsize VALUES(126,X'010304060407');
INSERT INTO musclesearch_docsize VALUES(127,X'010303090407');
INSERT INTO musclesearch_docsize VALUES(128,X'010303090707');
INSERT INTO musclesearch_docsize VALUES(129,X'010202040207');
INSERT INTO musclesearch_docsize VALUES(130,X'010202020207');
INSERT INTO musclesearch_docsize VALUES(131,X'010202020307');
INSERT INTO musclesearch_docsize VALUES(132,X'010507020205');
INSERT INTO musclesearch_docsize VALUES(133,X'010507040207');
INSERT INTO musclesearch_docsize VALUES(134,X'010303090706');
INSERT INTO musclesearch_docsize VALUES(135,X'010404090707');
INSERT INTO musclesearch_docsize VALUES(136,X'010404060308');
INSERT INTO musclesearch_docsize VALUES(137,X'010303040706');
INSERT INTO musclesearch_docsize VALUES(138,X'010303030406');
INSERT INTO musclesearch_docsize VALUES(139,X'010406030708');
INSERT INTO musclesearch_docsize VALUES(140,X'010406030708');
INSERT INTO musclesearch_docsize VALUES(141,X'010202090706');
INSERT INTO musclesearch_docsize VALUES(142,X'010202030704');
INSERT INTO musclesearch_docsize VALUES(143,X'010202030705');
INSERT INTO musclesearch_docsize VALUES(144,X'010303080406');
INSERT INTO musclesearch_docsize VALUES(145,X'010404090408');
INSERT INTO musclesearch_docsize VALUES(146,X'010404040308');
INSERT INTO musclesearch_docsize VALUES(147,X'010404050905');
INSERT INTO musclesearch_docsize VALUES(148,X'010404030602');
INSERT INTO musclesearch_docsize VALUES(149,X'010303020404');
INSERT INTO musclesearch_docsize VALUES(150,X'010404060402');
INSERT INTO musclesearch_docsize VALUES(151,X'010303120404');
INSERT INTO musclesearch_docsize VALUES(152,X'010404080505');
INSERT INTO musclesearch_docsize VALUES(153,X'010505070503');
INSERT INTO musclesearch_docsize VALUES(154,X'010404070505');
INSERT INTO musclesearch_docsize VALUES(155,X'010404040506');
INSERT INTO musclesearch_docsize VALUES(156,X'010303020602');
INSERT INTO musclesearch_docsize VALUES(157,X'010403060808');
INSERT INTO musclesearch_docsize VALUES(158,X'010405040405');
INSERT INTO musclesearch_docsize VALUES(159,X'010405040502');
INSERT INTO musclesearch_docsize VALUES(160,X'010303080802');
INSERT INTO musclesearch_docsize VALUES(161,X'010303090702');
INSERT INTO musclesearch_docsize VALUES(162,X'010202050c02');
INSERT INTO musclesearch_docsize VALUES(163,X'0103030a0202');
INSERT INTO musclesearch_docsize VALUES(164,X'0103030b0702');
INSERT INTO musclesearch_docsize VALUES(165,X'010303060802');
INSERT INTO musclesearch_docsize VALUES(166,X'010202040203');
INSERT INTO musclesearch_docsize VALUES(167,X'01040405060b');
INSERT INTO musclesearch_docsize VALUES(168,X'0104040c070c');
INSERT INTO musclesearch_docsize VALUES(169,X'0103030f0203');
INSERT INTO musclesearch_docsize VALUES(170,X'010303040208');
CREATE TABLE IF NOT EXISTS 'musclesearch_stat'(id INTEGER PRIMARY KEY, value BLOB);
INSERT INTO musclesearch_stat VALUES(0,X'aa01aa01b904d104d206e7059609cae401');
CREATE TABLE tbl_arteries (id integer NOT NULL PRIMARY KEY AUTOINCREMENT, lat_name text NOT NULL, name text NOT NULL, parent_id INTEGER REFERENCES tbl_arteries (id), UNIQUE (id));
INSERT INTO tbl_arteries VALUES(1,'Aa. temporales profundae','Deep temporal arteries','A. maxillaris, pars infratemporalis');
INSERT INTO tbl_arteries VALUES(2,'Cor','Heart',0);
INSERT INTO tbl_arteries VALUES(3,'Arcus aortae','Aortic arch',NULL);
INSERT INTO tbl_arteries VALUES(4,'A. carotis communis','Common carotid artery',3);
INSERT INTO tbl_arteries VALUES(5,'A. carotis externa','External carotid artery',4);
INSERT INTO tbl_arteries VALUES(6,'A. maxillaris (around art. temporosomething something)','Maxillary artery around temporomandibular joint',5);
INSERT INTO tbl_arteries VALUES(7,'A. maxillaris (fossa temporalis)','Maxillary artery in the temporal fossa / 2nd part',5);
INSERT INTO tbl_arteries VALUES(8,'A. maxillaris (fossa pterygopalatina)','Maxillary artery in the pterygopalatine fossa',5);
INSERT INTO tbl_arteries VALUES(9,'A. masseterica','Masseteric artery',7);
INSERT INTO tbl_arteries VALUES(10,'A. tibialis posterior','Posterior tibial artery',11);
INSERT INTO tbl_arteries VALUES(11,'A. poplitea','Popliteal artery',12);
INSERT INTO tbl_arteries VALUES(12,'A.femoralis','Femoral artery',13);
INSERT INTO tbl_arteries VALUES(13,'A. iliaca externa','External iliac artery',14);
INSERT INTO tbl_arteries VALUES(14,'A. iliaca communis','Common iliac artery',15);
INSERT INTO tbl_arteries VALUES(15,replace('Aorta abdominalis,\npars abdominalis aortae','\n',char(10)),'Abdominal aorta',16);
INSERT INTO tbl_arteries VALUES(16,'pars thoracica aortae, aorta thoracalis','Thoracic aorta',17);
INSERT INTO tbl_arteries VALUES(17,replace('Aorta descendens,\npars descendens aortae','\n',char(10)),'Descending aorta',3);
INSERT INTO tbl_arteries VALUES(18,'A. subclavia ','Subclavian artery',3);
INSERT INTO tbl_arteries VALUES(19,'A. axillaris','Axillary artery',18);
INSERT INTO tbl_arteries VALUES(20,'A. brachialis','Brachial artery',19);
INSERT INTO tbl_arteries VALUES(21,'A. recurrens radialis ','Radial recurrent artery',22);
INSERT INTO tbl_arteries VALUES(22,'A. radialis ','Radial artery',20);
INSERT INTO tbl_arteries VALUES(23,'A. profunda brachii','Deep brachial artery',20);
INSERT INTO tbl_arteries VALUES(24,'A. circumflexa humeri posterior','Posterior humeral circumflex artery',19);
INSERT INTO tbl_arteries VALUES(25,'A. collateralis media','Middle collateral artery',23);
INSERT INTO tbl_arteries VALUES(26,'R. anterior recurerentis ulnaris','Anteror recurrent ulnar artery',27);
INSERT INTO tbl_arteries VALUES(27,'A. recurrens ulnaris ','Recurrent ulnar artery',28);
INSERT INTO tbl_arteries VALUES(28,'A. ulnaris ','Ulnar artery',20);
INSERT INTO tbl_arteries VALUES(29,'A. radialis ','Radial artery',20);
INSERT INTO tbl_arteries VALUES(30,'Truncus thyrocervialis ','Thyrocervical trunk',18);
INSERT INTO tbl_arteries VALUES(31,'A. suprascapularis','Suprascapular artery',30);
INSERT INTO tbl_arteries VALUES(32,'A. subscapularis','Subscapular artery',19);
INSERT INTO tbl_arteries VALUES(33,'A. circumflexa scapulae','Circumflex scapular artery',31);
INSERT INTO tbl_arteries VALUES(34,'A. interossea communis','Common interosseous artery',28);
INSERT INTO tbl_arteries VALUES(35,'A. interossea anterior','Anterior interosseous artery',34);
INSERT INTO tbl_arteries VALUES(36,'Arcus palmaris superficialis ','Superficial palmar arch',28);
INSERT INTO tbl_arteries VALUES(37,'R. palmaris superficialis arteriae radialis','Superficial palmar branch of radial artery',22);
INSERT INTO tbl_arteries VALUES(38,'Arcus palmaris profundus','Deep palmar arch',22);
INSERT INTO tbl_arteries VALUES(39,'A. iliaca interna','internal iliac artery',14);
INSERT INTO tbl_arteries VALUES(40,'A. iliolumbalis','Iliolumbal artery',39);
INSERT INTO tbl_arteries VALUES(41,'A. sacrales lateralis superior','Superior lateral sacral artery',39);
INSERT INTO tbl_arteries VALUES(42,'A. sacrales lateralis inferior','Inferior lateral sacral artery',39);
INSERT INTO tbl_arteries VALUES(43,'A. obturatoria','Obturator artery',39);
INSERT INTO tbl_arteries VALUES(44,'A. glutea superior','Superior gluteal artery',39);
INSERT INTO tbl_arteries VALUES(45,'A. glutea inferior','Inferior gluteal artery',39);
INSERT INTO tbl_arteries VALUES(46,'A. superficialis femoris ','Superficial femoral artery',12);
INSERT INTO tbl_arteries VALUES(47,'A. profunda femoris ','Deep femoral artery',12);
INSERT INTO tbl_arteries VALUES(48,'A. circumflexa femoris lateralis ','Lateral circumflex artery',47);
INSERT INTO tbl_arteries VALUES(49,'A. circumflexa femoris medialis ','Medial circumflex artery',47);
INSERT INTO tbl_arteries VALUES(50,'Aa. perforantes ','Perforating arteries',47);
INSERT INTO tbl_arteries VALUES(51,'R. lumbalis arteriae iliolumbalis ','Lumbar branch of iliolumbar artery',40);
INSERT INTO tbl_arteries VALUES(52,'R. iliacus arteriae iliolumbalis ','Iliac branch of iliolumbar artery',40);
INSERT INTO tbl_arteries VALUES(53,'Aa. surales ','Sural arteries',11);
INSERT INTO tbl_arteries VALUES(54,'A. tibialis anterior','Anterior tibial artery',11);
INSERT INTO tbl_arteries VALUES(55,'A. dorsalis pedis','Dorsal artery',54);
INSERT INTO tbl_arteries VALUES(56,'A. metatarsalis dorsalis prima','First dorsal metatarsal artery',55);
INSERT INTO tbl_arteries VALUES(57,'A plantaris profunda','Deep plantar artery',55);
INSERT INTO tbl_arteries VALUES(58,'Aa. tarsales mediales','Medial tarsal arteries',55);
INSERT INTO tbl_arteries VALUES(59,'A. arcuata ','Arcuate artery',55);
INSERT INTO tbl_arteries VALUES(60,'A. plantaris medialis ','Medial plantar artery',10);
INSERT INTO tbl_arteries VALUES(61,'A. plantaris lateralis ','Lateral plantar artery',10);
INSERT INTO tbl_arteries VALUES(62,'A. fibularis (a. peronea)','Fibular artery',10);
INSERT INTO tbl_arteries VALUES(63,'A. circumflexa ilium superficialis','Superficial circumflex iliac artery',46);
INSERT INTO tbl_arteries VALUES(64,'A. descendens genus','Descending geniculate artery',12);
INSERT INTO tbl_arteries VALUES(65,'Aa. lumbales','Lumbal arteries',15);
INSERT INTO tbl_arteries VALUES(66,'A. circumflexa ilium profunda','Deep circumflex iliac artery',13);
CREATE TABLE tbl_musclegroups (id integer NOT NULL PRIMARY KEY AUTOINCREMENT, name text NOT NULL, lat_name text NOT NULL, parent_id INTEGER, explanation TEXT, FOREIGN KEY (parent_id) REFERENCES tbl_musclegroups (id));
INSERT INTO tbl_musclegroups VALUES(126,'Muscles of the head','Mm. capitis',NULL,'Includes masticatoy and mimetic muscles, 1st and 2nd visceral arch');
INSERT INTO tbl_musclegroups VALUES(127,'Muscles of the neck','Mm. colli',NULL,NULL);
INSERT INTO tbl_musclegroups VALUES(128,'Muscles of the thorax','Mm. thoracis',NULL,NULL);
INSERT INTO tbl_musclegroups VALUES(129,'Muscles of the upper limb','Musculi membri superioris',NULL,NULL);
INSERT INTO tbl_musclegroups VALUES(130,'Muscles of the lower limb','Musculi membri inferioris',NULL,NULL);
INSERT INTO tbl_musclegroups VALUES(131,'Muscles of the abdomen','Mm. abdominis',NULL,NULL);
INSERT INTO tbl_musclegroups VALUES(132,'Masticatory muscles','Mm. masticatorii',126,NULL);
INSERT INTO tbl_musclegroups VALUES(133,'Facial (mimetic muscles)','Mm. faciei',126,NULL);
INSERT INTO tbl_musclegroups VALUES(134,'Derivates of the 1st visceral arch','0',127,NULL);
INSERT INTO tbl_musclegroups VALUES(135,'Derivates of the 2nd visceral arch','0',127,NULL);
INSERT INTO tbl_musclegroups VALUES(136,'Craniothoracal muscles','0',127,NULL);
INSERT INTO tbl_musclegroups VALUES(137,'Straight muscles of the neck','0',127,NULL);
INSERT INTO tbl_musclegroups VALUES(138,'Lateral muscles of the neck','0',127,NULL);
INSERT INTO tbl_musclegroups VALUES(139,'Deep muscles of neck','0',127,NULL);
INSERT INTO tbl_musclegroups VALUES(140,'Diaphragma','Diaphragma',128,NULL);
INSERT INTO tbl_musclegroups VALUES(141,'Superficial muscles of thorax','0',128,NULL);
INSERT INTO tbl_musclegroups VALUES(143,'Muscles of the shoulder girdle','0',129,NULL);
INSERT INTO tbl_musclegroups VALUES(144,'Muscles of the arm','Mm. brachii',129,NULL);
INSERT INTO tbl_musclegroups VALUES(145,'Muscles of the forearm','Mm. antebrachii',129,NULL);
INSERT INTO tbl_musclegroups VALUES(146,'Muscles of the hand','Mm. manus',129,NULL);
INSERT INTO tbl_musclegroups VALUES(147,'Pelvic muscles','Mm. pelvis',130,NULL);
INSERT INTO tbl_musclegroups VALUES(148,'Muscles of the thigh','Mm. femoris',130,NULL);
INSERT INTO tbl_musclegroups VALUES(149,'Muscles of the leg','Mm. cruris',130,NULL);
INSERT INTO tbl_musclegroups VALUES(150,'Muscles of the foot','Mm. pedis',130,NULL);
INSERT INTO tbl_musclegroups VALUES(151,'Deep muscles of the thorax','0',128,NULL);
INSERT INTO tbl_musclegroups VALUES(152,'Anterior abdominal muscles','0',131,NULL);
INSERT INTO tbl_musclegroups VALUES(153,'Lateral abdominal muscles','0',131,NULL);
INSERT INTO tbl_musclegroups VALUES(154,'Posterior abdominal muscles','0',131,NULL);
INSERT INTO tbl_musclegroups VALUES(155,'Muscles of the scalp and around the eye opening','0',133,NULL);
INSERT INTO tbl_musclegroups VALUES(156,'Muscles of the nose opening','0',133,NULL);
INSERT INTO tbl_musclegroups VALUES(157,'Mimetic muscles in the region of the mouth','0',133,NULL);
INSERT INTO tbl_musclegroups VALUES(158,'Muscles of the ear opening','0',133,NULL);
INSERT INTO tbl_musclegroups VALUES(159,'1st layer','0',NULL,NULL);
INSERT INTO tbl_musclegroups VALUES(160,'2nd layer','0',NULL,NULL);
INSERT INTO tbl_musclegroups VALUES(161,'3rd layer','0',NULL,NULL);
INSERT INTO tbl_musclegroups VALUES(162,'Anterior compartment','Compartimentum brachii anterius',144,NULL);
INSERT INTO tbl_musclegroups VALUES(163,'Posterior compartment','Compartimentum brachii posterius',144,NULL);
INSERT INTO tbl_musclegroups VALUES(164,'Anterior compartment','Compartimentum antebrachii anterius',145,NULL);
INSERT INTO tbl_musclegroups VALUES(165,'Lateral (radial) part of the posterior compartment','Compartimentum antebrachii posterius, pars lateralis',145,NULL);
INSERT INTO tbl_musclegroups VALUES(166,'Posterior compartment','Compartimentum antebrachii posterius',145,NULL);
INSERT INTO tbl_musclegroups VALUES(167,'Muscles of the thumb','Mm. eminentiae thenaris',146,NULL);
INSERT INTO tbl_musclegroups VALUES(168,'Muscles of the little finger','Mm. eminentiae hypothenaris',146,NULL);
INSERT INTO tbl_musclegroups VALUES(169,'Middle group of the hand muscles','0',146,NULL);
INSERT INTO tbl_musclegroups VALUES(170,'Anterior pelvic muscles','0',147,NULL);
INSERT INTO tbl_musclegroups VALUES(171,'Posterior pelvic muscles','0',147,NULL);
INSERT INTO tbl_musclegroups VALUES(172,'Anterior compartment of the thigh','Compartimentum femoris anterius',148,NULL);
INSERT INTO tbl_musclegroups VALUES(173,'Medial compartment of the thigh','Compartimentum femoris mediale',148,NULL);
INSERT INTO tbl_musclegroups VALUES(174,'Posterior compartment of the thigh','Compartimentum femoris posterius',148,NULL);
INSERT INTO tbl_musclegroups VALUES(175,'Anterior compartment of the leg','Compartimentum cruris anterius',149,NULL);
INSERT INTO tbl_musclegroups VALUES(176,'Lateral compartment of the leg','Compartimentum cruris laterale',149,NULL);
INSERT INTO tbl_musclegroups VALUES(177,'Posterior compartment of the leg','Compartimentum cruris posterior',149,NULL);
INSERT INTO tbl_musclegroups VALUES(178,'Dorsal surface of the foot','0',150,NULL);
INSERT INTO tbl_musclegroups VALUES(179,'Plantar surface of the foot','0',150,NULL);
INSERT INTO tbl_musclegroups VALUES(180,'1st layer','0',164,NULL);
INSERT INTO tbl_musclegroups VALUES(181,'2nd layer','0',164,NULL);
INSERT INTO tbl_musclegroups VALUES(182,'3rd layer','0',164,NULL);
INSERT INTO tbl_musclegroups VALUES(183,'4th layer','0',164,NULL);
INSERT INTO tbl_musclegroups VALUES(184,'1st layer','0',166,NULL);
INSERT INTO tbl_musclegroups VALUES(185,'2nd layer','0',166,NULL);
INSERT INTO tbl_musclegroups VALUES(186,'Muscles of the great toe','0',179,NULL);
INSERT INTO tbl_musclegroups VALUES(187,'Muscles of the little toe','0',179,NULL);
INSERT INTO tbl_musclegroups VALUES(188,'Middle group muscles of the foot','0',179,NULL);
INSERT INTO tbl_musclegroups VALUES(189,'Superficial muscles of the back','0',128,NULL);
INSERT INTO tbl_musclegroups VALUES(190,'1st layer','0',189,NULL);
INSERT INTO tbl_musclegroups VALUES(191,'2nd layer','0',189,NULL);
INSERT INTO tbl_musclegroups VALUES(192,'3rd layer','0',189,NULL);
CREATE TABLE IF NOT EXISTS 'tbl_muscles_arteries' ('muscle_id' INTEGER NOT NULL, 'arterie_id' INTEGER NOT NULL, PRIMARY KEY ('muscle_id', 'arterie_id'));
CREATE TABLE IF NOT EXISTS 'tbl_muscles_nerves' ('muscle_id' INTEGER NOT NULL, 'nerve_id' INTEGER NOT NULL, PRIMARY KEY ('muscle_id', 'nerve_id'));
CREATE TABLE IF NOT EXISTS 'tbl_muscles_veins' ('muscle_id' INTEGER NOT NULL, 'vein_id' INTEGER NOT NULL, PRIMARY KEY ('muscle_id', 'vein_id'));
CREATE TABLE IF NOT EXISTS 'tbl_nerves' (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `lat_name` text NOT NULL
,  `name` text NOT NULL
,'parent_id' varchar(255) NOT NULL
);
INSERT INTO tbl_nerves VALUES(1,'Nn. temporales profundi','Deep temporal nerves','N. mandibularis');
INSERT INTO tbl_nerves VALUES(2,'N. mandibularis','Mandibular nerve','N. trigeminus');
INSERT INTO tbl_nerves VALUES(3,'N. pterygoideus lateralis','Lateral pterygoid nerve','0');
INSERT INTO tbl_nerves VALUES(4,'N. auricularis posterior','Posterior auricular nerve','0');
INSERT INTO tbl_nerves VALUES(5,'N. facialis','Facial nerve','0');
INSERT INTO tbl_nerves VALUES(6,'Rr. buccales n. facialis','Buccal branch of the facial nerve','0');
INSERT INTO tbl_nerves VALUES(7,'Rr. zygomatici n. facialis','Zygomatic branches of the facial nerve','0');
INSERT INTO tbl_nerves VALUES(8,'R. marginalis mandibularis n. facialis','Marginal mandibular branch of the facial nerve','0');
INSERT INTO tbl_nerves VALUES(9,'Rr. temporales n. facialis','Temporal branches of the facial nerve','0');
INSERT INTO tbl_nerves VALUES(10,'N. alveolaris inferior','Inferior alveolar nerve','');
INSERT INTO tbl_nerves VALUES(11,'R. digastricus n. facialis','Digastric branch of the facial nerve','N. facialis');
INSERT INTO tbl_nerves VALUES(12,'R. colli n. facialis','Cervical branch of the facial nerve','N. facialis');
INSERT INTO tbl_nerves VALUES(13,'R. externus n. accessorii','External branch of accessory nerve','N. accessorius');
INSERT INTO tbl_nerves VALUES(14,'Ansa cervicalis','Ansa cervicalis','');
INSERT INTO tbl_nerves VALUES(15,'Plexus cervicalis et brachalis C3-6','Cervical and brachial plexus C3-6','');
INSERT INTO tbl_nerves VALUES(16,'Plexus cervicalis','Cervical plexus','');
INSERT INTO tbl_nerves VALUES(17,'R. ventralis C1','Ventral branch of C1','');
INSERT INTO tbl_nerves VALUES(18,'Nn. pectorales (lateralis et medialis)','Lateral and medial pectoral nerve','');
INSERT INTO tbl_nerves VALUES(19,'N. subclavius','Subclavian nerve','');
INSERT INTO tbl_nerves VALUES(20,'N. thoracicus longus','Long thoracic nerve','');
INSERT INTO tbl_nerves VALUES(21,'N. thoracodorsalis','Thoracodorsal nerve','');
INSERT INTO tbl_nerves VALUES(22,'N. dorsalis scapulae','Dorsal scapular nerve','');
INSERT INTO tbl_nerves VALUES(23,'Nn. intercostales','Intercostal nerves','');
INSERT INTO tbl_nerves VALUES(24,'N. axillaris','Axillary nerve','');
INSERT INTO tbl_nerves VALUES(25,'N. suprascapularis','Suprascapular nerve','');
INSERT INTO tbl_nerves VALUES(26,'N. subscapularis','Subscapular nerve','');
INSERT INTO tbl_nerves VALUES(27,'N. musculocutaneus','Musculocutaneous nerve','');
INSERT INTO tbl_nerves VALUES(28,'Rr. musculares n. radialis','Muscular branches of the radial nerve','');
INSERT INTO tbl_nerves VALUES(29,'Rr. musculares n. mediani','Muscular branches of the median nerve','');
INSERT INTO tbl_nerves VALUES(30,'Rr. musculares n. ulnaris','Muscular branches of the ulnar nerve','');
INSERT INTO tbl_nerves VALUES(31,'Plexus brachialis, pars supraclavicularis','Brachial plexus, supraclavicular part','0');
INSERT INTO tbl_nerves VALUES(32,'Plexus brachialis, pars infraclavicularis','Brachial plexus, infraclavicular part','0');
INSERT INTO tbl_nerves VALUES(33,'Fasciculus medialis','Medial cord','32');
INSERT INTO tbl_nerves VALUES(34,'Fasciculus posterior','Posterior cord','32');
INSERT INTO tbl_nerves VALUES(35,'Fasciculus lateralis','Lateral cord','32');
INSERT INTO tbl_nerves VALUES(36,'N. radialis','Radial nerve','34');
INSERT INTO tbl_nerves VALUES(37,'N. medianus','Median nerve','0');
INSERT INTO tbl_nerves VALUES(38,'N. interosseus antebrachii anterior n. mediani','Anterior interosseus nerve','37');
INSERT INTO tbl_nerves VALUES(39,'R. profundus n. radialis','Deep branch of the radial nerve','36');
INSERT INTO tbl_nerves VALUES(40,'N. interosseus antebrachii posterior n. radialis','0','39');
INSERT INTO tbl_nerves VALUES(41,'N. ulnaris','Ulnar nerve','33');
INSERT INTO tbl_nerves VALUES(42,'R. profundus n. ulnaris','Deep branch of the ulnar nerve','41');
CREATE TABLE IF NOT EXISTS 'tbl_veins' (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT
,  `lat_name` text NOT NULL
,  `name` text NOT NULL
,'parent_id' text NOT NULL
,  UNIQUE (`id`)
);
INSERT INTO tbl_veins VALUES(1,'Cor','Heart','');
INSERT INTO tbl_veins VALUES(2,'V. brachiocephalica','Brachiocephalic vein','1');
INSERT INTO tbl_veins VALUES(3,'V. jugularis interna','Internal jugular vein','2');
INSERT INTO tbl_veins VALUES(4,'V. retromandibularis','Retromandibular vein','3');
INSERT INTO tbl_veins VALUES(5,'V. facialis','Facial vein','4');
INSERT INTO tbl_veins VALUES(6,'V. facialis profunda','Deep facial vein','5');
INSERT INTO tbl_veins VALUES(7,'Plexus pterygoideus','Pterygoid plexus','6');
CREATE TABLE tbl_muscles (id integer NOT NULL PRIMARY KEY AUTOINCREMENT, lat_name text NOT NULL, name text NOT NULL, origo text NOT NULL, insertio text NOT NULL, functio text NOT NULL, nerve text NOT NULL, artery integer NOT NULL, vein integer NOT NULL, image text NOT NULL, comment text, image_color text NOT NULL, musclegroup_id INTEGER REFERENCES tbl_musclegroups (id) NOT NULL, UNIQUE (id));
INSERT INTO tbl_muscles VALUES(1,'M. temporalis','Temporal muscle','Planum temporale, fascia temporalis','Processus coronoideus mandibulae','Elevation of the mandible; posterior fibers pulls the mandible backward','1',1,2,'mtemporalis.png','N/A','',132);
INSERT INTO tbl_muscles VALUES(2,'M. masseter','Masseter muscle','Arcus zygomaticus','Tuberositas masseterica mandibulae','Elevation of the mandible','2',9,0,'mmasseter.png','N/A','',132);
INSERT INTO tbl_muscles VALUES(3,'M. pterygoideus lateralis','Lateral pterygoid muscle','Facies infratemporalis alae majoris ossis sphenoidalis, lamina lateralis processus pterygoidei','Fovea pterygoidea mandibulae','Bilateral contractions pulls the mandible forward; unilateral contractions pushes the mandible laterally.','3',2,2,'mpterygoideuslateralis.png','N/A','',132);
INSERT INTO tbl_muscles VALUES(4,'M. pterygoideus medialis','Medial pterygoid muscle','Fossa pterygoidea ossis sphenoidalis','Tuberositas pterygoidea mandibulae','Bilateral contractions pulls the mandible forward; unilateral contractions pushes the mandible laterally.','2',2,2,'mpterygoideusmedialis.png','N/A','',132);
INSERT INTO tbl_muscles VALUES(5,'Venter occipitalis m. occipitofrontalis','Occpitalis muscle','Linea nuchalis superior','Galea aponeurotica','Lifting of the eyebrows and the upper eyelids; produces horizontal wrinkles of the forehead; facial expression of astonishment','4',0,0,'venteroccpitalismoccipitofrontalis.png','N/A','',155);
INSERT INTO tbl_muscles VALUES(6,'Venter frontalis m. occipitofrontalis','Frontalis muscle','Galea aponeurotica','Skin of the eyebrow','Lifting of the eyebrows and the upper eyelids; produces horizontal wrinkles of the forehead; facial expression of astonishment','5',0,0,'venterfrontalismoccipitofrontalis.png','N/A','',155);
INSERT INTO tbl_muscles VALUES(7,'M. corrugator supercilii','Corrugator supercilii muscle','Glabella, margo supraorbitalis','Skin of the eyebrow','Pulls the skin of the eyebrows downward and medially; produces vertical wrinkles of the forehead; expression of the "thinker"','5',0,0,'mcorrugatorsupercilii.png','N/A','',155);
INSERT INTO tbl_muscles VALUES(8,'M. orbicularis oculi, pars orbitalis ','Orbital orbicularis','Lig. palpebrale mediale','Lig. palpebrale mediale','Acts as sphincter','5',0,0,'morbicularisoculi.png','N/A','',155);
INSERT INTO tbl_muscles VALUES(9,'M. orbicularis oculi, pars palpebralis ','Palpebral orbicularis','Lig. palpebrale mediale','Lig. palpebrale laterale','Closes the eyelid','5',0,0,'morbicularisoculi.png','N/A','',155);
INSERT INTO tbl_muscles VALUES(10,'M. orbicularis oculi, pars lacrimalis','Lacrimal orbicularis','Os lacrimale','Lacrimal sac','Expands the lacrimal sac','5',0,0,'morbicularisoculi.png','N/A','',155);
INSERT INTO tbl_muscles VALUES(11,'M. nasalis','Nasal muscle','Processus alveolaris maxillae','Cartilages of the external nose','Pulls the nasal wing downward; reduces the size of the nostrils','6',0,0,'mnasalis.png','N/A','',156);
INSERT INTO tbl_muscles VALUES(12,'M. levator labii superioris alaeque nasi','Levator labii superioris alaeque nasi muscle','Processus frontalis maxillae','Skin of the upper lip and nasal wing','Elevates the nasal wing and upper lip upward, enlarges the size of the nostrils.','6',0,0,'mlevatorlabiisuperiorisalaequenasi.png','This muscle has the longest name of a muscle in animal','',156);
INSERT INTO tbl_muscles VALUES(13,'M. orbicularis oris','Orbicularis oculi muscle','Fibres arranged circulary','Fibres arranged circulary',replace('Closes the lips; protrudes them forward\n(sucking shape).','\n',char(10)),'6',0,0,'morbicularisoris.png','N/A','',157);
INSERT INTO tbl_muscles VALUES(14,'M. levator anguli oris','Levator anguli oris muscle','Fossa canina','Skin at the angle of the mouth','Lifts the angle of the mouth','6',0,0,'mlevatorangulioris.png','N/A','',157);
INSERT INTO tbl_muscles VALUES(15,'M. levator labii superioris','Levator labii superioris muscle','Margo infraorbitalis maxillae','Skin of the upper lip','Lifts the upper lip.','7',0,0,'mlevatorlabiisuperioris.png','N/A','',157);
INSERT INTO tbl_muscles VALUES(16,'M. zygomaticus major','Zygomaticus major muscle','Os zygomaticum','Skin at the angle of the mouth','Lifts the angle of mouth upward and laterally&mdash;expression of pleasure&mdash;laughing muscle.','6|7',0,0,'mzygomaticusmajor.png','N/A','',157);
INSERT INTO tbl_muscles VALUES(17,'M. zygomaticus minor','Zygomaticus minor muscle','Os zygomaticum','Skin at the angle of the mouth','Lifts the angle of mouth upward and laterally&mdash;expression of pleasure&mdash;laughing muscle','6',0,0,'mzygomaticusminor.png','N/A','',157);
INSERT INTO tbl_muscles VALUES(18,'M. risorius ','Risorius muscle','Fascia masseterica','Skin at the angle of the mouth ','Pulls the angle of mouth laterally; produces the nasolabial folds&mdash;expression of pleasure&mdash;laughing muscle','6',0,0,'mrisorius.png','N/A','',157);
INSERT INTO tbl_muscles VALUES(19,'M. buccinator ','Buccinator muscle','Processus alveolaris maxillae et mandibulae, raphe pterygomandibularis ','Skin at the angle of the mouth','Pulls the angle of mouth laterally; compresses the cheeks&mdash;expression of satisfaction','6',0,0,'mbuccinator.png','N/A','',157);
INSERT INTO tbl_muscles VALUES(20,'M. depressor anguli oris','Depressor anguli oris muscle','Basis mandibulae ','Skin at the angle of the mouth','Pulls the angle of the mouth downward&mdash;expression of sadness','8',0,0,'mdepressorangulioris.png','N/A','',157);
INSERT INTO tbl_muscles VALUES(21,'M. depressor labii inferioris ','Depressor labii inferioris muscle','Basis mandibulae ','Skin of the lower lip','Pulls the angle of the mouth and lower lip downward&mdash;expression of preserverance','8',0,0,'mdepressorlabiiinferioris.png','N/A','',157);
INSERT INTO tbl_muscles VALUES(22,'M. mentalis ','Mentalis muscle','Processus alveolaris mandibulae','Skin of the chin','Produses small dimples in the chin&mdash;expression of doubt','8',0,0,'mmentalis.png','N/A','',157);
INSERT INTO tbl_muscles VALUES(23,'M. auricularis anterior','Anterior auricularis muscle','Fascia temporalis','Helix (ear)','Pulls ear forward','9',0,0,'mauricularisanterior.png','N/A','',158);
INSERT INTO tbl_muscles VALUES(24,'M. auricularis superior','Superior auricularis muscle','Fascia temporalis','Above the ear','Pulls ear upward','9',0,0,'mauricularissuperior.png','N/A','',158);
INSERT INTO tbl_muscles VALUES(25,'M. auricularis posterior','Posterior auricularis muscle','Processus mastoideus','Posterior ear','Pulls ear backward','4',0,0,'mauricularisposterior.png','N/A','',158);
INSERT INTO tbl_muscles VALUES(26,'M. mylohyoideus','Mylohyodeus muscle','Linea mylohyoidea','Os hyoideum','Pulls the mandible downward; elevates os hyoideum.','10',0,0,'mmylohyoideus.png','N/A','',134);
INSERT INTO tbl_muscles VALUES(27,'M. digastricus, venter anterior','Anterior belly of the digastric muscle','Fossa digastrica','Os hyoideum','Pulls the mandible downward; elevates os hyoideum','2',0,0,'mdigastricus.png','N/A','',134);
INSERT INTO tbl_muscles VALUES(28,'M. digastricus, venter posterior','Posterior belly of the digastricus muscle','Incisura mastoidea','Os hyoideum','Pulls os hyoideum upward and backward','11',0,0,'mdigastricus.png','N/A','',135);
INSERT INTO tbl_muscles VALUES(29,'M. stylohyoideus','Stylohyoideus muscle','Processus styloideus','Os hyoideum','Pulls os hyoideum upward and backward','11',0,0,'mstylohyoideus.png','N/A','',135);
INSERT INTO tbl_muscles VALUES(30,'Platysma','Platysma muscle','Fascia pectoralis - region of the 2nd rib','Basis mandibulae','Pulls the mandible downward; produces slight wrinkling of the skin','12',0,0,'platysma.png','"Sobo 1909 267" by Dr. Johannes Sobotta - Sobotta''s Atlas and Text-book of Human Anatomy 1909. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Sobo_1909_267.png#mediaviewer/File:Sobo_1909_267.png','',135);
INSERT INTO tbl_muscles VALUES(31,'M. sternocleidomastoideus','Sternocleidomastoid muscle','Extremitas sternalis claviculae, manubrium sterni','Processus styloideus, linea nuchalis superior','Bilateral contraction lifts the head backward; unilateral contraction bends the head to the same side and turns the face to opposite side; acts in forced inspiration.','13',0,0,'msternocleidomastoideus.png','"Sternocleidomastoideus" by Image:Gray385.png modified by Uwe Gille - Image:Gray385.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Sternocleidomastoideus.png#mediaviewer/File:Sternocleidomastoideus.png','',136);
INSERT INTO tbl_muscles VALUES(32,'M. trapezius','Trapezius muscle','Protuberantia occipitalis externa, linea nuchalis superior, log. nuchae, processus spinosi vertebrarum thoraciae','Spina scapulae, acromion, extremitas acromialis claviculae','Pulls the scapula toward the vertebral column; upper part elevates the shoulder; lower part pulls the shoulder downward.','13',0,0,'mtrapezius.png','"Trapezius Gray409" by Mikael Häggström.When using this image in external works, it may be cited as follows:Häggström, Mikael. "Medical gallery of Mikael Häggström 2014". Wikiversity Journal of Medicine 1 (2). DOI:10.15347/wjm/2014.008. ISSN 20018762. - Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Trapezius_Gray409.PNG#mediaviewer/File:Trapezius_Gray409.PNG','',136);
INSERT INTO tbl_muscles VALUES(33,'M. sternohyoideus','Sternohyoid muscle','Manubrium sterni','Os hyoideum','Pulls os hyoideum downward.','14',0,0,'msternohyoideus.png','N/A','',137);
INSERT INTO tbl_muscles VALUES(34,'M. sternothyreoideus','Sternothyroid muscle','Manubrium sterni','Cartilago thyreoidea','Pulls larynx downward.','14',0,0,'msternothyroideus.png','N/A','',137);
INSERT INTO tbl_muscles VALUES(35,'M. thyreohyoideus','Thyrohyoid muscle','Cartilago thyreoidea','Os hyoideum','Pulls os hyoideum downward or elevates larynx.','14',0,0,'mthyreohyoideus.png','N/A','',137);
INSERT INTO tbl_muscles VALUES(36,'M. geniohyoideus','Geniohyoid muscle','Spina mentalis','Os hyoideum','Pulls the mandible downward or elevates os hyoideum.','15',0,0,'mgeniohyoideus.png','N/A','',137);
INSERT INTO tbl_muscles VALUES(37,'M. omohyodeus, venter superior','Superior belly of the omohyoid muscle','Os hyoideum','Continues into tendon','Pulls os hyoideum downward or elevates scapula','14',0,0,'momohyoideus.png','N/A','',137);
INSERT INTO tbl_muscles VALUES(38,'M. omohyoideus, venter inferior','Inferior belly of the omohyoid muscle','Margo superior scapulae','Continues into tendon','Pulls os hyoideum downward or elevates scapula','14',0,0,'momohyoideus.png','N/A','',137);
INSERT INTO tbl_muscles VALUES(39,'M. scalenus anterior','Scalenus anterior','Processus transversus vertebrae cervicalis III–IV','Tuberculum m. scaleni anterioris costae I','Bilateral contraction bends the neck forward; unilateral contraction bends the neck to the same side; acts in inspiration.','15',0,0,'mscalenus.png','N/A','',138);
INSERT INTO tbl_muscles VALUES(40,'M. scalenus medius','Scalenus medius','Processus transversus vertebrae cervicalis II–VII','Facies superior costae I, behind sulcus a. subclaviae','Bilateral contraction bends the neck forward; unilateral contraction bends the neck to the same side; acts in inspiration.','15',0,0,'mscalenus.png','N/A','',138);
INSERT INTO tbl_muscles VALUES(41,'M. scalenus posterior','Scalenus posterior','Processus transversus vertebrae cervicalis V–VII','Costae II','Bilateral contraction bends the neck forward; unilateral contraction bends the neck to the same side; acts in inspiration.','15',0,0,'mscalenus.png','N/A','',138);
INSERT INTO tbl_muscles VALUES(42,'M. longus capitis','Longus capitis muscle','Processus transversus vertebrae cervicalis III-VI','Pars basilaris ossis occipitalis','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.','16',0,0,'mlonguscapitis.png','N/A','',139);
INSERT INTO tbl_muscles VALUES(43,'M. longus colli','Longus colli muscle','Corpus vertebrae cervicalis V - vertebrae thoracicae III, processus transversus vertebrae cervicalis II–V','Tuberculum anterius atlantis, corpus vertebrae cervicalis II–IV, processus transversus vertebrae cervicalis VI','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.','16',0,0,'mlonguscolli.png','N/A','',139);
INSERT INTO tbl_muscles VALUES(44,'M. rectus capitis anterior','Rectus capitis anterior muscle','Massa lateralis atlantis','Pars basilaris ossis occipitalis','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.','17',0,0,'mrectuscapitisanterior.png','N/A','',139);
INSERT INTO tbl_muscles VALUES(45,'M. rectus capitis lateralis','Rectus capitis lateralis muscle','Processus transversus atlantis','Pars lateralis ossis occipitalis','Bilateral contraction bends the head and the neck forward; unilateral contraction bends the head and the neck to the same side.','17',0,0,'mrectuscapitislateralis.png','N/A','',139);
INSERT INTO tbl_muscles VALUES(46,'M. pectoralis major, pars clavicularis','Clavicular head of the pectoralis major muscle','Extremitas sternalis claviculae','Crista tuberculi majoris humeri','Flexio brachii','18',0,0,'mpectoralismajor.png','N/A','',141);
INSERT INTO tbl_muscles VALUES(47,'M. pectoralis major, pars sternocostalis','Sterocostal head of the pectoralis major muscle','Facies anterior sterni, cartilagines costarum II-VII','Crista tuberculi majoris humeri','Adductio brachii, rotatio interna brachii','18',0,0,'mpectoralismajor.png','N/A','',141);
INSERT INTO tbl_muscles VALUES(48,'M. pectoralis major, pars abdominalis','Abdominal part of the pectoralis major muscle','Lamina anterior vaginae m. Recti abdominis','Crista tuberculi majoris humeri','Adductio brachii, rotatio interna brachii','18',0,0,'mpectoralismajor.png','N/A','',141);
INSERT INTO tbl_muscles VALUES(52,'M. pectoralis minor','Pectoralis minor muscle','Facies externae costarum II-V','Processus coracoideus scapulae','Pulls shoulder forward and downward. Acts as inspiration muscle.','18',0,0,'mpectoralisminor.png','N/A','',141);
INSERT INTO tbl_muscles VALUES(53,'M. subclavius','Subclavius muscle','Facies superior costae I','Facies inferior claviculae','Elevates the 1st rib or pulls clavicula downward. Acts as inspiration muscle.','19',0,0,'msubclavius.png','N/A','',141);
INSERT INTO tbl_muscles VALUES(54,'M. serratus anterior','Serratus anterior muscle','Facies externa costae I-IX','Margo medialis et angulus inferior scapulae','Rotatio scapulae et elevatio brachii. Acts as inspiration muscle.','20',0,0,'mserratusanterior.png','N/A','',141);
INSERT INTO tbl_muscles VALUES(55,'M. trapezius','Trapezius muscle','Protuberantia occipitalis externa, linea nuchalis superior, log. nuchae, processus spinosi vertebrarum thoraciae','Spina scapulae, acromion, extremitas acromialis claviculae','Pulls the scapula toward the vertebral column; upper part elevates the shoulder; lower part pulls the shoulder downward.','13',0,0,'mtrapezius.png','Trapezius Gray409 by Mikael Häggström.When using this image in external works, it may be cited as follows:Häggström, Mikael. "Medical gallery of Mikael Häggström 2014". Wikiversity Journal of Medicine 1 (2). DOI:10.15347/wjm/2014.008. ISSN 20018762. - Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Trapezius_Gray409.PNG#mediaviewer/File:Trapezius_Gray409.PNG','',190);
INSERT INTO tbl_muscles VALUES(56,'M. latissimus dorsi','Latissimus dorsi muscle','Crista iliaca, fascia thoracolumbalis, processus spinosus vertebrae thoracicae VII-XII, facies externae costae IX-XII','Crista tuberculi minoris humeri','Adductio brachii, extensio brachii, rotatio interna brachii. Acts as inspiration muscle.','21',0,0,'mlatissumusdorsi.png','Latissimus dorsi by User:Mikael Häggström - Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Latissimus_dorsi.PNG#mediaviewer/File:Latissimus_dorsi.PNG','',190);
INSERT INTO tbl_muscles VALUES(57,'M. rhomboideus major','Rhomboideus major muscle','Processus spinosus vertebrae thoracicae I-IV','Margo medialis scapulae','Elevates the scapula and pulls the scapula toward the vertebral column.','22',0,0,'mrhomboideusmajor.png','Rhomboideus major by modified by Uwe Gille - Gray Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Rhomboideus_major.png#mediaviewer/File:Rhomboideus_major.png','',191);
INSERT INTO tbl_muscles VALUES(58,'M. rhomboideus minor','Rhomboideus minor muscle','Processus spinosus vertebrae cervicalis VI-VII, vertebrae thoracicae I, lig. nuchae','Margo medialis scapulae','Elevates the scapula and pulls the scapula toward the vertebral column.','22',0,0,'mrhomboideusminor.png','Rhomboideus minor by modified by Uwe Gille - Gray Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Rhomboideus_minor.png#mediaviewer/File:Rhomboideus_minor.png','',191);
INSERT INTO tbl_muscles VALUES(59,'M. levator scapulae','Levator scapulae muscle','Processus tranversus vertebrae cervicalis I-IV','Angulus superior scapulae','Elevates the scapula.','22',0,0,'mlevatorscapulae.png','Levator scapulae by modified by Uwe Gille - Gray Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Levator_scapulae.png#mediaviewer/File:Levator_scapulae.png','',191);
INSERT INTO tbl_muscles VALUES(60,'M. serratus posterior superior','Serratus posterior superior muscle','Processus spinosus vertebrae cervicalis VI-VII, vertebrae thoracicae I-II','Facies externae costae II-V','Elevates the ribs; acts as inspiration muscle.','23',0,0,'mserratusposteriorsuperior.png','By Anatomography (en:Anatomography (setting page of this image)) [CC-BY-SA-2.1-jp (http://creativecommons.org/licenses/by-sa/2.1/jp/deed.en)], via Wikimedia Commons','',192);
INSERT INTO tbl_muscles VALUES(61,'M. serratus posterior inferior','Serratus posterior inferior muscle','Processus spinosus vertebrae thoracicae XI-XII, vertebrae lumbales I-II','Facies externae costae IX-XII','Pulls the ribs downward; acts as expiration muscle.','23',0,0,'mserratusposteriorinferior.png','Serratus posterior by User:Mikael Häggström - Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Serratus_posterior.PNG#mediaviewer/File:Serratus_posterior.PNG','',192);
INSERT INTO tbl_muscles VALUES(62,'M. deltoideus, pars clavicularis','Clavicular part of the deltoid muscle','Extremitas acromialis claviculae','Tuberositas deltoidea','Adductio brachii, flexio brachii, rotatio interna brachii','24',0,0,'mdeltoideus.png','"Deltoid muscle top10" by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Deltoid_muscle_top10.png#mediaviewer/File:Deltoid_muscle_top10.png','',143);
INSERT INTO tbl_muscles VALUES(63,'M. deltoideus, pars acromialis','Acromial part of the deltoid muscle','Acromion','Tuberositas deltoidea','Abduction brachii, flexio brachii, extensio brachii','24',0,0,'mdeltoideus.png','"Deltoid muscle top10" by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Deltoid_muscle_top10.png#mediaviewer/File:Deltoid_muscle_top10.png','',143);
INSERT INTO tbl_muscles VALUES(64,'M. deltoideus, pars spinalis ','Spinal part of the deltoid muscle','Spina scapulae','Tuberositas deltoidea','Adductio brachii, extensio brachii, rotatio externa brachii','24',0,0,'mdeltoideus.png','"Deltoid muscle top10" by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Deltoid_muscle_top10.png#mediaviewer/File:Deltoid_muscle_top10.png','',143);
INSERT INTO tbl_muscles VALUES(65,'M. supraspinatus','Supraspinatus muscle','Fossa supraspinata','Tuberculum majus humeri','Abductio brachii','25',0,0,'msupraspinatus.png','Supraspinatus muscle back4 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Supraspinatus_muscle_back4.png#mediaviewer/File:Supraspinatus_muscle_back4.png','',143);
INSERT INTO tbl_muscles VALUES(66,'M. infraspinatus','Infraspinatus muscle','Fossa infraspinata','Tuberculum majus humeri','Rotatio externa brachii','25',0,0,'minfraspinatus.png','Infraspinatus by Mikael Häggström.When using this image in external works, it may be cited as follows:Häggström, Mikael. "Medical gallery of Mikael Häggström 2014". Wikiversity Journal of Medicine 1 (2). DOI:10.15347/wjm/2014.008. ISSN 20018762. - Image:Gray409.png. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Infraspinatus.PNG#mediaviewer/File:Infraspinatus.PNG','',143);
INSERT INTO tbl_muscles VALUES(67,'M. teres major','Teres major muscle','Angulus inferior scapulae','Crista tuberculi minoris humeri','Adductio brachii, extensio brachii, rotatio interna brachii','26',0,0,'mteresmajor.png','Teres major muscle back by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Teres_major_muscle_back.png#mediaviewer/File:Teres_major_muscle_back.png','',143);
INSERT INTO tbl_muscles VALUES(68,'M. teres minor','Teres minor muscle','Margo lateralis scapulae','Tuberculum majus humeri','Rotatio externa brachii, extensio brachii','24',0,0,'mteresminor.png','Teres minor muscle back3 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Teres_minor_muscle_back3.png#mediaviewer/File:Teres_minor_muscle_back3.png','',143);
INSERT INTO tbl_muscles VALUES(69,'M. subscapularis','Subscapularis muscle','Fossa subscapularis','Tuberculum minus humeri, crista tuberculi minoris','Adductio brachii, rotatio interna brachii','26',32,0,'msubscapularis.png','Subscapularis muscle frontal by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Subscapularis_muscle_frontal.png#mediaviewer/File:Subscapularis_muscle_frontal.png','',143);
INSERT INTO tbl_muscles VALUES(70,'M. coracobrachialis','Coracobrachalis muscle','Processus coracoideus scapulae','Corpus humeri','Flexio brachii, adductio brachii, rotatio interna brachii','27',20,0,'mcoracobrachalis.png','Biceps brachii muscle06 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Biceps_brachii_muscle06.png#mediaviewer/File:Biceps_brachii_muscle06.png','',162);
INSERT INTO tbl_muscles VALUES(71,'M. biceps brachii, caput longum','Long head of the biceps muscle','Tuberculum supraglenoidale scapulae','Tuberositas radii','Flexio antebrachii, suptionatio antebrachii, abductio brachii','27',20,0,'mbicepsbrachii.png','Biceps brachii muscle06 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Biceps_brachii_muscle06.png#mediaviewer/File:Biceps_brachii_muscle06.png','',162);
INSERT INTO tbl_muscles VALUES(72,'M. biceps brachii, caput breve','Short head of the biceps muscle','Processus coracoideus scapulae','Tuberositas radii','Flexio antebrachii, suptionatio antebrachii, flexio brachii','27',20,0,'mbicepsbrachii.png','Brachialis muscle11 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Brachialis_muscle11.png#mediaviewer/File:Brachialis_muscle11.png','',162);
INSERT INTO tbl_muscles VALUES(73,'M. brachialis','Brachialis muscle','Humerus, lower part of facies anterior','Tuberositas ulnae','Flexio antebrachii','27',21,0,'mbrachialis.png','"Brachialis muscle11" by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Brachialis_muscle11.png#mediaviewer/File:Brachialis_muscle11.png','',162);
INSERT INTO tbl_muscles VALUES(74,'M. triceps brachii, caput longum','Long head of the triceps muscle','Tuberculum infraglenoidale scapulae','Olecranon ulnae','Extensio antebrachii, extensio brachii, adductio brachii','28',24,0,'mtricepsbrachii.png','Triceps brachii muscle06 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Triceps_brachii_muscle06.png#mediaviewer/File:Triceps_brachii_muscle06.png','',163);
INSERT INTO tbl_muscles VALUES(75,'M. triceps brachii, caput laterale','Lateral head of the triceps muscle','Humerus, above sulcus n. radialis','Olecranon ulnae','Extensio antebrachii','28',23,0,'mtricepsbrachii.png','Triceps brachii muscle06 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Triceps_brachii_muscle06.png#mediaviewer/File:Triceps_brachii_muscle06.png','',163);
INSERT INTO tbl_muscles VALUES(76,'M. triceps brachii, caput mediale','Medial head of the triceps muscle','Humerus, below sulcus n. radialis','Olecranon ulnae','Extensio antebrachii','28',23,0,'mtricepsbrachii.png','Triceps brachii muscle06 by Anatomography - en:Anatomography (setting page of this image). Licensed under Creative Commons Attribution-Share Alike 2.1-jp via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Triceps_brachii_muscle06.png#mediaviewer/File:Triceps_brachii_muscle06.png','',163);
INSERT INTO tbl_muscles VALUES(77,'M. anconeus','Anconeus muscle','Epicondylus lateralis humeri','Epiphysis proximalis ulnae','Extensio antebrachii','28',25,0,'manconeus.png','Musculusanconeus2 by ???????? - Own work. Licensed under Public domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Musculusanconeus2.png#mediaviewer/File:Musculusanconeus2.png','',163);
INSERT INTO tbl_muscles VALUES(78,'M. pronator teres','Pronator teres muscle','Epicondylus medialis humeri, processus coronoideus ulnae','Facies posterior et lateralis radii','Flexi antebrachii, pronatio antebrachii','29',26,0,'mpronatorteres.png','N/A','',180);
INSERT INTO tbl_muscles VALUES(80,'M. flexor carpi radialis','Flexor carpi radialis muscle','Epicondylus medialis humeri, fascia antebrachii','Basis ossis metacarpalis II et III','Flexio manus, abductio manus','29',29,0,'mflexorcarpiradialis.png','N/A','',180);
INSERT INTO tbl_muscles VALUES(81,'M. palmaris longus','Palmaris longus muscle','Epicondylus medalis humeri','Aponeurosis palmaris','Flexio manus','29',0,0,'mpalmarislongus.png','N/A','',180);
INSERT INTO tbl_muscles VALUES(82,'M. flexor carpi ulnaris','Flexor carpi ulnaris muscle','Epicondylus medialis humeri, olecranon, margo posterior ulnae','Os pisiforme, os hamatum, os metacarpale V','Flexio manus, adductio manus','30',0,0,'mflexorcarpriulnaris.png','N/A','',180);
INSERT INTO tbl_muscles VALUES(83,'M. flexor digitorum superficialis','Flexor digitorum superficialis','Epicondylus medalis humeri','Basis phalangis mediae II-V','Flexio phalangis mediae, flexio phalangis proximalis, flexio manus','37',28,0,'mflexordigitorumsuperficialis.png','N/A','',181);
INSERT INTO tbl_muscles VALUES(84,'M. flexor digitorum profundus','Flexor digitorum profundus','Facies anterior ulnae, membrana interossea antebrachii','Basis phalangis distalis II-V','Flexio phalangis distalis, flexio phalangis mediae, flexio phalangis proximalis, flexio manus','0',35,0,'mflexordigitorumprofundus.png','N/A','',182);
INSERT INTO tbl_muscles VALUES(85,'M. flexor pollicis longus','Flexor pollicis longus muscle','Facies anterior radii, membrana interossea antebrachii','Basis phalangis distalis pollicis','Flaxio phalangis distalis et proximalis pollicis, flexio poliicis, flexio manus','38',35,0,'mflexorpollicislongus.png','N/A','',182);
INSERT INTO tbl_muscles VALUES(86,'M. pronator quadratus','Pronator quadratus muscle','Facies anterior ulnae','Facies anterior radii','Pronatio antebrachii','38',35,0,'mpronatorquadratus.png','N/A','',183);
INSERT INTO tbl_muscles VALUES(87,'M. brachioradialis','Brachioradialis muscle','Margo lateralis humeri, septum intermusculare laterale','Processus styloideus radii','Flexio antebrachii, position between supinatio et pronatio antebrachii','36',21,0,'mbrachioradialis.png','N/A','',165);
INSERT INTO tbl_muscles VALUES(88,'M. extensor carpi radialis longus','Extensor carpi radialis longus muscle','Margo et epicondylus lateralis humeri, septum intermusculare laterale','Basis ossis metacarpalis II','Extensio manus, abductio manus','39',22,0,'mextensorcarpiradialislongus.png','N/A','',165);
INSERT INTO tbl_muscles VALUES(89,'M. extensor carpi radialis brevis','Extensor carpi radialis brevis muscle','Epicondylus lateralis humeri','Basis ossis metacarpalis III','Extensio manus, abductio manus','39',22,0,'mextensorcarpiradialisbrevis.png','N/A','',165);
INSERT INTO tbl_muscles VALUES(90,'M. extensor digitorum','Extensor digitorum muscle','Epicondylus lateralis humeri','Basis phalangis mediae, basis phalangis distalis (II - V fingers) ','Extensio digitorum, extensio manus ','40',0,0,'mextensordigitorum.png','N/A','',184);
INSERT INTO tbl_muscles VALUES(91,'M. extensor digiti minimi','Extensor digiti minimi muscle','Epicondylus lateralis humeri','Basis phalangis mediae, basis phalangis distalis (V finger)','Extensio digiti minimi ','40',0,0,'mextensordigitiminimi.png','N/A','',184);
INSERT INTO tbl_muscles VALUES(92,'M. extensor carpi ulnaris','Extensor carpi ulnaris muscle','Epicondylus lateralis humeri, olecranon, facies posterior ulnae','Basis ossis metacarpalis V ','Extensio manus, adductio manus ','40',0,0,'mextensorcarpiulnaris.png','N/A','',184);
INSERT INTO tbl_muscles VALUES(93,'M. abductor pollicis longus','Abductor pollicis longus muscle','Facies posterior ulnae et radii, membrana interossea antebrachii ','Basis ossis metacarpalis I ','Abductio pollicis ','40',0,0,'mabductorpollicislongus.png','N/A','',185);
INSERT INTO tbl_muscles VALUES(94,'M. extensor pollicis brevis','Extensor pollicis brevis muscle','Facies posterior radii et membrana interossea antebrachii ','Basis phalangis proximalis pollicis ','Extensio phalangis proximalis pollicis ','40',0,0,'mextensorpollicisbrevis.png','N/A','',185);
INSERT INTO tbl_muscles VALUES(95,'M. extensor pollicis longus','Extensor pollicis longus muscle','Facies posterior ulnae, membrana interossea antebrachii ','Basis phalangis distalis pollicis ','Extensio pollicis','40',0,0,'mextensorpollicislongus.png','N/A','',185);
INSERT INTO tbl_muscles VALUES(96,'M. extensor indicis','Extensor indicis muscle','Facies posterior ulnae, membrana interossea antebrachii ','Basis phalangis mediae, basis phalangis distalis indicis ','Extensio indicis ','40',0,0,'mextensorindicis.png','N/A','',185);
INSERT INTO tbl_muscles VALUES(97,'M. supinator','Supinator muscle','Epicondylus lateralis humeri, ulna, lig. collaterale radiale ','Facies lateralis radii ','Supinatio antebrachii ','40',0,0,'msupinator.png','N/A','',185);
INSERT INTO tbl_muscles VALUES(98,'M. abductor pollicis brevis ','Abductor pollicis brevis muscle','etinaculum flexorum, os scaphoideum ','Basis phalangis proximalis pollicis ','Abductio pollicis','0',37,0,'mabductorpollicisbrevis.png','N/A','',167);
INSERT INTO tbl_muscles VALUES(99,'M. flexor pollicis brevis, caput superficiale','Superficial head of the flexor pollicis brevis muscle','etinaculum flexorum, os scaphoideum ','Basis phalangis proximalis pollicis ','Flexio pollicis, oppositio pollicis','0',37,0,'caputsuperficialemflexorispollicisbrevis.png','N/A','',167);
INSERT INTO tbl_muscles VALUES(100,'M. flexor pollicis brevis, caput profundum','Deep head of the flexor pollicis brevis muscle','Os trapezium, os trapezoideum ','Basis phalangis proximalis pollicis ','Flexio pollicis, oppositio pollicis','0',37,0,'caputprofundummflexorispollicisbrevis.png','N/A','',167);
INSERT INTO tbl_muscles VALUES(101,'M. opponens pollicis','Abductor pollicis longus muscle','Retinaculum flexorum et os trapezium ','Basis ossis metacarpalis I ','Oppositio pollicis','0',37,0,'mopponenspollicis.png','N/A','',167);
INSERT INTO tbl_muscles VALUES(102,'M. adductor pollicis, caput obliquum','Oblique head of the adductor pollicis muscle','Os capitatum ','Basis phalangis proximalis pollicis ','Adductio pollicis','0',38,0,'caputobliquummadductorpollicis.png','N/A','',167);
INSERT INTO tbl_muscles VALUES(103,'M. adductor pollicis, caput transversum','Transverse head of the adductor pollicis muscle','Os metacarpale III ','Basis phalangis proximalis pollicis ','Adductio pollicis','0',38,0,'caputtransversummadductorpollicis.png','N/A','',167);
INSERT INTO tbl_muscles VALUES(104,'M. abductor digiti minimi ','Abductor digiti minimi muscle','Os pisiforme, retinaculum flexorum ','Basis phalangis proximalis digiti minimi ','Abductio digiti minimi ','42',28,0,'mabductordigitiminimi.png','N/A','',168);
INSERT INTO tbl_muscles VALUES(105,'M. flexor digiti minimi brevis ','Flexor digiti minimi brevis muscle','Hamulus ossis hamati, retinaculum flexorum','Basis phalangis proximalis digiti minimi ','Flexio digiti minimi ','42',28,0,'mflexordigitiminimibrevis.png','N/A','',168);
INSERT INTO tbl_muscles VALUES(106,'M. opponens digiti minimi ','Opponens digiti minimi muscle','Hamulus ossis hamati, retinaculum flexorum ','Os metacarpale V ','Oppositio digiti minimi ','42',28,0,'mopponensdigitiminimi.png','N/A','',168);
INSERT INTO tbl_muscles VALUES(107,'M. palmaris brevis ','Palmaris brevis muscle','Retinaculum flexorum and aponeurosis palmaris ulnar side ','Skin of the palm on ulnar side ','Wrinkles of the skin ','42',28,0,'mpalmarisbrevis.png','N/A','',168);
INSERT INTO tbl_muscles VALUES(108,'Mm. lumbricales (4)','Lumbrical muscles','M. flexor digitorum profundus tendons ','Phalanx proximalis (II - V fingers) and m. extensor digitorum tendons','Flexio phalangis proximalis, extensio phalangis mediae, extensio phalangis distalis (II - V fingers)','0',0,0,'mmlumbricales.png','N/A','',169);
INSERT INTO tbl_muscles VALUES(109,'Mm. interossei palmares (3)','Palmar interossei muscles','Os metacarpale II, IV, V','Phalanx proximalis (II, IV, V fingers)','Adductio digitorum (pull 2nd, 4th and 5th fingers to 3rd) ','0',0,0,'mminterosseipalmares.png','N/A','',169);
INSERT INTO tbl_muscles VALUES(110,'Mm. interossei dorsales (4)','Dorsal interossei muscles','Between metacarpal bones of 1st to 5th fingers ','Phalanx proximalis (II - IV fingers)','Abductio digitorum (pull 2nd and 4th fingers away from 3rd)','0',0,0,'mminterosseidorsales.png','N/A','',169);
INSERT INTO tbl_muscles VALUES(111,'M. iliacus','Iliacus muscle','Fossa iliaca','Trochanter minor','Flexio femoris, adductio, rotatio externa femoris. Flexio trunci.','0',52,0,'miliacus.png','N/A','',170);
INSERT INTO tbl_muscles VALUES(112,'M. psoas major','Psoas major muscle','Fossa iliaca','Trochanter minor','Flexio femoris, adductio, rotatio externa femoris. Flexio trunci.','0',51,0,'mpsoasmajor.png','N/A','',170);
INSERT INTO tbl_muscles VALUES(113,'M. psoas minor','Psoas minor muscle','Vertebra thoracica XII, vertebrae lumbales I','Eminentia iliopubica','Flexio trunci','0',0,0,'mpsoasminor.png','N/A','',170);
INSERT INTO tbl_muscles VALUES(114,'M. gluteus maximus ','Gluteus maximus muscle','Facies glutea behind linea glutea posterior, facies posterior ossis sacri et ossis coccygis, lig. sacrotuberale, fascia thoracolumbalis','Tuberositas glutea, tractus iliotibialis ','Extensio femoris, rotatio externa femoris, abductio femoris','0',0,0,'mgluteusmaximus.png','N/A','',171);
INSERT INTO tbl_muscles VALUES(115,'M. gluteus medius ','Gluteus medius muscle','Facies glutea between linea glutea anterior et posterior','Trochanter major ','Abductio femoris. Anterior part - rotatio interna femoris. Posterior part - rotatio externa femoris','0',0,0,'mgluteusmedius.png','N/A','',171);
INSERT INTO tbl_muscles VALUES(116,'M. gluteus minimus ','Gluteus minimus muscle','Facies glutea between linea glutea anterior et inferior ','Trochanter major ','Abductio femoris. Anterior part - rotatio interna femoris. Posterior part - rotatio externa femoris','0',0,0,'mgluteusminimus.png','N/A','',171);
INSERT INTO tbl_muscles VALUES(117,'M. tensor fasciae latae ','Tensor fasciae latae muscle','Spina iliaca anterior superior ','Continues into tractus iliotibialis','Tenses tractus iliotibialis. Flexio, rotatio interna femoris. ','0',0,0,'mtensorfasciaelatae.png','N/A','',171);
INSERT INTO tbl_muscles VALUES(118,'M. piriformis ','Piriformis muscle','Facies pelvica ossis sacri laterally from II - IV foramina sacralia anteriora ','Passes through foramen ischiadicum majus to trochanter major','Abductio femoris, rotatio externa femoris. ','0',0,0,'mpiriformis.png','N/A','',171);
INSERT INTO tbl_muscles VALUES(119,'M. obturator internus ','Obturator internus muscle','Inner surface of membranae obturatoriae','Passes through foramen ischiadicum minus to fossa trochanterica','Rotatio externa femoris ','0',0,0,'mobturatorinternus.png','N/A','',171);
INSERT INTO tbl_muscles VALUES(120,'M. gemellus superior ','Gemellus superior muscle','Spina ischiadica ','Fossa trochanterica ','Rotatio externa femoris ','0',0,0,'mgemellussuperior.png','N/A','',171);
INSERT INTO tbl_muscles VALUES(121,'M. gemellus inferior ','Gemellus inferior muscle','Tuber ischiadicum ','Fossa trochanterica ','Rotatio externa femoris ','0',0,0,'mgemellusinferior.png','N/A','',171);
INSERT INTO tbl_muscles VALUES(122,'M. quadratus femoris ','Quadratus femoris muscle','Tuber ischiadicum ','Crista intertrochanterica','Rotatio externa femoris, adductio femoris','0',0,0,'mquadratusfemoris.png','N/A','',171);
INSERT INTO tbl_muscles VALUES(123,'M. obturator externus ','Obturator externus muscle','External surface of membranae obturatoriae','Fossa trochanterica ','Rotatio externa femoris ','0',0,0,'mobturatorexternus.png','N/A','',171);
INSERT INTO tbl_muscles VALUES(124,'M. rectus femoris','Rectus femoralis muscle','Spina iliaca anterior inferior ','By lig. patellae to tuberositas tibiae ','Extensio cruris, flexio femoris','0',0,0,'mrectusfemoralis.png','N/A','',172);
INSERT INTO tbl_muscles VALUES(125,'M. vastus medialis','Vastus medialis muscle','Labium mediale lineae asperae','By lig. patellae to tuberositas tibiae ','Extensio cruris ','0',0,0,'mvastusmedialis.png','N/A','',172);
INSERT INTO tbl_muscles VALUES(126,'M. vastus lateralis','Vastus lateralis muscle','Labium laterale lineae asperae ','By lig. patellae to tuberositas tibiae ','Extensio cruris ','0',0,0,'mvastuslateralis.png','N/A','',172);
INSERT INTO tbl_muscles VALUES(127,'M. vastus intermedius','Vastus intermedius muscle','Anterior surface of the femur ','By lig. patellae to tuberositas tibiae ','Extensio cruris ','0',0,0,'mvastusintermedius.png','N/A','',172);
INSERT INTO tbl_muscles VALUES(128,'M. sartorius','Sartorius muscle','Spina iliaca anterior superior ','By lig. patellae to tuberositas tibiae ','Extensio cruris ','0',0,0,'msartorius.png','N/A','',172);
INSERT INTO tbl_muscles VALUES(129,'M. pectineus','Pectineus muscle','Ramus superior et pecten ossis pubis ','Linea pectinea femoris ','Flexio femoris, adductio femoris, rotatio externa femoris','0',0,0,'mpectineus.png','N/A','',173);
INSERT INTO tbl_muscles VALUES(130,'M. adductor brevis','Ramus inferior ossis pubis ','Ramus superior et pecten ossis pubis ','Labium mediale lineae asperae ','Flexio femoris, adductio femoris, rotatio externa femoris','0',0,0,'madductorbrevis.png','N/A','',173);
INSERT INTO tbl_muscles VALUES(131,'M. adductor longus','Adductor longus muscle','Ramus superior ossis pubis between symphysis et tuberculum pubicum ','Labium mediale lineae asperae ','Flexio femoris, adductio femoris, rotatio externa femoris ','0',0,0,'madductorlongus.png','N/A','',173);
INSERT INTO tbl_muscles VALUES(132,'M. adductor magnus','Adductor magnus muscle','Ramus inferior ossis pubis, ramus ossis ischii, tuber ischiadicum ','Labium mediale lineae asperae, epicondylus medialis femoris ','Adductio femoris, rotatio interna femoris, extensio femoris ','0',0,0,'madductormagnus.png','N/A','',173);
INSERT INTO tbl_muscles VALUES(133,'M. gracilis','Gracilis muscle','Ramus inferior ossis pubis ','Tuberositas tibiae ','Adductio femoris, flexio cruris, rotatio interna cruris ','0',0,0,'mgracilis.png','N/A','',173);
INSERT INTO tbl_muscles VALUES(134,'M. semitendinosus','Semitendinosus muscle','Tuber ischiadicum','Tuberositas tibiae','Extensio femoris, flexio cruris, rotatio interna cruris','0',0,0,'msemitendinosus.png','N/A','',174);
INSERT INTO tbl_muscles VALUES(135,'M. semimembranosus','Semimembranous muscle','Tuber ischiadicum','Condylus medialis tibiae','Extensio femoris, flexio cruris, rotatio interna cruris','0',0,0,'msemimembranosus.png','N/A','',174);
INSERT INTO tbl_muscles VALUES(136,'M. biceps femoris, caput longum','Long head of the biceps femoris muscle','Tuber ischiadicum','Caput fibulae','Flexio cruris, rotatio externa cruris','0',0,0,'caputlongummbiceptisfemoris.png','N/A','',174);
INSERT INTO tbl_muscles VALUES(137,'M. biceps femoris, caput breve','Short head of the biceps femoris muscle','Labium laterale lineae asperae','Caput fibulae','Flexio cruris, rotatio externa cruris, extensio femoris','0',0,0,'caputbrevembiceptisfemoris.png','N/A','',174);
INSERT INTO tbl_muscles VALUES(138,'M. tibialis anterior','Tibialis anterior muscle','Condylus lateralis tibiae, facies lateralis tibiae, membrana interossea cruris ','Basis ossis metatarsalis I, os cuneiforme mediale ','Extensio pedis, supinatio pedis, adductio pedis ','0',0,0,'mtibialisanterior.png','N/A','',175);
INSERT INTO tbl_muscles VALUES(139,'M. extensor digitorum longus','Extensor digitorum longus muscle','Condylus lateralis tibiae, facies lateralis tibiae, membrana interossea cruris ','Phalanx media et distalis, os metatarsale V ','Extensio pedis, extensio digitorum II – V ','0',0,0,'mextensordigitorumlongus.png','N/A','',175);
INSERT INTO tbl_muscles VALUES(140,'M. extensor hallucis longus','Extensor hallucis longus muscle','Facies medialis fibulae, membrana interossea cruris ','Phalanx distalis hallucis ','Extensio pedis, extensio hallucis, supinatio et adductio pedis ','0',0,0,'mextensorhallucislongus.png','N/A','',175);
INSERT INTO tbl_muscles VALUES(143,'M. fibularis longus ','Fibularis longus muscle','Fibula, septum intermusculare posterius','Basis ossis metatarsalis I, os cuneiforme mediale ','Flexio pedis, abductio et pronatio pedis ','0',0,0,'mfibularislongus.png','N/A','',176);
INSERT INTO tbl_muscles VALUES(144,'M. fibularis brevis','Fibularis brevis muscle','Fibula, septa intermuscularia','Basis ossis metatarsalis V','Flexio pedis, abductio et pronatio pedis. ','0',0,0,'mfibularisbrevis.png','N/A','',176);
INSERT INTO tbl_muscles VALUES(145,'M. gastrocnemius, caput mediale','Medial head of the gastrocnemius muscle','Condylus medialis femoris ','Tendo calcanei (tendo Achillis) to tuber calcanei ','Flexio pedis, supinatio et adductio pedis, flexio cruris','0',0,0,'mfibularislongus.png','N/A','',177);
INSERT INTO tbl_muscles VALUES(146,'M. gastrocnemii, caput laterale','Lateral head of the gastrocnemius muscle','Condylus lateralis femoris','Tendo calcanei (tendo Achillis) to tuber calcanei ','Flexio pedis, supinatio et adductio pedis, flexio cruris','0',0,0,'mfibularisbrevis.png','N/A','',177);
INSERT INTO tbl_muscles VALUES(147,'M. soleus','Soleus muscle','Linea m. solei, caput fibulae, arcus tendineus m. solei','Tendo calcanei (tendo Achillis) to tuber calcanei ','Flexio pedis, supinatio et adductio pedis ','0',0,0,'msoleus.png','N/A','',177);
INSERT INTO tbl_muscles VALUES(148,'M. plantaris','Plantaris muscle','Condylus lateralis femoris','Tendo calcanei (tendo Achillis) to tuber calcanei ','Flexio cruris, flexio pedis','0',0,0,'mplantaris.png','N/A','',177);
INSERT INTO tbl_muscles VALUES(149,'M. popliteus','Popliteus muscle','Condylus lateralis femoris','Facies posterior tibiae above linea m. solei ','Flexio cruris, rotatio interna cruris ','0',0,0,'mpopliteus.png','N/A','',177);
INSERT INTO tbl_muscles VALUES(150,'M. tibialis posterior','Tibialis posterior muscle','Facies posterior tibiae et fibulae, membrana interossea cruris ','Os naviculare, ossa cuneiformia ','Flexio pedis, supinatio et adductio pedis ','0',0,0,'mtibialisposterior.png','N/A','',177);
INSERT INTO tbl_muscles VALUES(151,'M. flexor digitorum longus','Flexor digitorum longus muscle','Facies posterior tibiae, deep plate of the fasciae cruris ','Phalanges distales (II-V) ','Flexio pedis, flexio phalangis distalis, mediae et proximalis ','0',0,0,'mflexordigitorumlongus.png','N/A','',177);
INSERT INTO tbl_muscles VALUES(152,'M. flexor hallucis longus','Flexor hallucis longus muscle','Fibula, membrana interossea cruris ','Phalanx distalis hallucis','Flexio pedis, supinatio et adductio pedis, flexio hallucis ','0',0,0,'mflexorhallucislongus.png','N/A','',177);
INSERT INTO tbl_muscles VALUES(153,'M. extensor digitorum brevis ','Extensor digitorum brevis muscle','Calcaneus (superior and lateral surface)','To m. extensor digitorum longus tendons (II, III, IV) ','Extensio digitorum (II, III, IV) ','0',0,0,'mextensordigitorumbrevis.png','N/A','',178);
INSERT INTO tbl_muscles VALUES(154,'M. extensor hallucis brevis ','Extensor hallucis brevis muscle','Calcaneus (superior surface)','To m. extensor hallucis longus tendons ','Extensio hallucis','0',0,0,'mextensorhallucisbrevis.png','N/A','',178);
INSERT INTO tbl_muscles VALUES(155,'M. abductor hallucis','Abductor hallucis muscle','Tuber calcanei ','Basis phalangis proximalis hallucis ','Abductio hallucis, flexio hallucis','0',0,0,'mabductorhallucis.png','N/A','',186);
INSERT INTO tbl_muscles VALUES(156,'M. flexor hallucis brevis','Flexor hallucis brevis muscle','Os cuneiforme mediale, lig. plantare longum ','Basis phalangis proximalis hallucis ','Flexio hallucis','0',0,0,'mflexorhallucisbrevis.png','N/A','',186);
INSERT INTO tbl_muscles VALUES(157,'M. adductor hallucis','Adductor hallucis muscle','Os cuboideum, os cuneiforme laterale, basis ossis metatarsalis II, III, lig. plantare longum, capsulae artt. metatarsophalangeae II - V ','Basis phalangis proximalis hallucis ','Adductio hallucis, flexio hallucis','0',0,0,'madductorhallucis.png','N/A','',186);
INSERT INTO tbl_muscles VALUES(158,'M. abductor digiti minimi','Abductor digiti minimi muscle','Tuber calcanei lateral surface, basis ossis metatarsalis V ','Basis phalangis proximalis digiti minimi ','Abudctio et flexio digiti minimi','0',0,0,'mabductordigitiminimi.png','N/A','',187);
INSERT INTO tbl_muscles VALUES(159,'M. flexor digiti minimi brevis','Flexor digiti minimi brevis muscle','Basis ossis metatarsalis V, lig. plantare longum ','Basis phalangis proximalis digiti minimi ','Flexio digitimi minimi','0',0,0,'mflexordigitiminimibrevis.png','N/A','',187);
INSERT INTO tbl_muscles VALUES(160,'M. opponens digiti minimi','Opponens digiti minimi muscle','Basis ossis metatarsalis V, lig. plantare longum ','Facies lateralis ossis metatarsalis V','Adductio et oppositio digiti minimi','0',0,0,'mopponensdigitiminimi.png','N/A','',187);
INSERT INTO tbl_muscles VALUES(161,'M. flexor digitorum brevis ','Flexor digitorum brevis muscle','Tuber calcanei, aponeurosis plantaris ','Basis phalangis mediae (II-V)','Flexio phalangis mediae, flexio phalangis proximalis ','0',0,0,'mflexordigitorumbrevis.png','N/A','',188);
INSERT INTO tbl_muscles VALUES(162,'M. quadratus plantae ','Quadratus plantae muscle','Tuber calcanei','To m. flexor digitorum longus tendons ','Flexio digitorum','0',0,0,'mquadratusplantae.png','N/A','',188);
INSERT INTO tbl_muscles VALUES(163,'Mm. lumbricales pedis (4) ','Lumbricales pedis muscle','From m. flexor digitorum longus tendons ','To m. extensor digitorum longus tendons (II-V)','Flexio phalangis proximalis, extensio phalangis mediae et distalis','0',0,0,'mlumbricalespedis.png','N/A','',188);
INSERT INTO tbl_muscles VALUES(164,'Mm. interossei dorsales (4) ','Dorsal interossei of the foot','Metatarsal bones (I-V)','Phalanx proximalis (II-IV)','Abductio digitorum (II, III, IV) ','0',0,0,'minterosseidorsales.png','N/A','',188);
INSERT INTO tbl_muscles VALUES(165,'Mm. interossei plantares (3) ','Plantar interossei of the foot','Metatarsal bones (III-V)','Phalanx proximalis (II, III, V)','Adductio digitorum','0',0,0,'minterosseiplantares.png','N/A','',188);
INSERT INTO tbl_muscles VALUES(166,'Mm. intercostales externi','External intercostal muscles','Upper rib from tuberculum costae to cartilago costae','Lower rib from tuberculum costae to cartilago costae ','Inspiration muscle','0',0,0,'mmintercostalesexterni.png','N/A','',151);
INSERT INTO tbl_muscles VALUES(167,'Mm. intercostales interni','Internal intercostal muscles','Lower rib from angulus costae to margin of sternum','Upper rib from angulus costae to sternum ','Expiration muscle','0',0,0,'mmintercostalesinterni.png','N/A','',151);
INSERT INTO tbl_muscles VALUES(168,'Mm. subcostales','Subcostal muscles','Lower rib angulus costae region','Fibres bypase one rib and reache next rib in angulus costae region ','Expiration muscle','0',0,0,'mmsubcostales.png','N/A','',151);
INSERT INTO tbl_muscles VALUES(169,'Mm. levatores costarum','Levatores costarum muscles','Proc. transversus vertebrae cervicalis VII et vertebrae thoracicae I-XI','Angulus costae ','Inspiration muscle','0',0,0,'mmlevatorescostarum.png','N/A','',151);
INSERT INTO tbl_muscles VALUES(170,'Mm. transversus thoracis','Transversus thoracis muscles','Corpus sterni et proc. xiphoidei (posterior surface), cartilagines costarum VI, VII ','Internal surfaces of III to VI ribs ','Expiration muscle','0',0,0,'mmtransversusthoracis.png','N/A','',151);
INSERT INTO tbl_muscles VALUES(171,'M. rectus abdominis ','Rectus abdominis muscle','Proc. xiphoideus, cartilagines costarum V-VII','Os pubis - between symphysis pubica et tuberculum pubicum ','Flexio trunci','0',0,0,'mrectusabdominis.png','N/A','',152);
INSERT INTO tbl_muscles VALUES(172,'M. pyramidalis','Pyramidalis muscle','Ramus superior ossis pubis','Linea alba ','Tenses linea alba','0',0,0,'mpyramidalis.png','N/A','',152);
INSERT INTO tbl_muscles VALUES(173,'M. obliquus externus abdominis','Oblique external abdominal muscle','Facies externa costarum V-XII','Crista iliaca, linea alba (lig. inguinale) ','Flexio trunci (bilateral contractions). Turns trunk to oposite side (unilateral contractions) ','0',0,0,'mobliquusexternusabdominis.png','N/A','',153);
INSERT INTO tbl_muscles VALUES(174,'M. obliquus internus abdominis','Oblique internal abdominal muscle','Lig. inguinale lateral part, spina iliaca anterior superior, crista iliaca, fascia thoracolumbalis ','Costae X, XI et XII, linea alba ','Flexio trunci (bilateral contractions). Turns trunk to the same side (unilateral contractions) ','0',0,0,'mobliquusinternusabdominis.png','N/A','',153);
INSERT INTO tbl_muscles VALUES(175,'M. transversus abdominis','Transverse abdominal muscle','Lig. inguinale, spina iliaca anterior superior, crista iliaca, fascia thoracolumbalis, internal surfaces VII to XII ','Linea alba ','Increases intraabdominal pressure','0',0,0,'mtransversusabdominis.png','N/A','',153);
INSERT INTO tbl_muscles VALUES(176,'Mm. quadratus lumborum','Quadratus lumborum muscle','Lig. iliolumbale, crista iliaca ','Costa XII','Extensio trunci (bilateral contractions), lateroflexio trunci (unilateral contractions)','0',51,0,'mmquadratuslumborum.png','N/A','',154);
CREATE TABLE tbl_link_arteries (id INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, muscle_id INTEGER, artery_id INTEGER);
INSERT INTO tbl_link_arteries VALUES(15,1,1);
INSERT INTO tbl_link_arteries VALUES(16,2,9);
INSERT INTO tbl_link_arteries VALUES(17,3,2);
INSERT INTO tbl_link_arteries VALUES(18,4,2);
INSERT INTO tbl_link_arteries VALUES(19,69,32);
INSERT INTO tbl_link_arteries VALUES(20,70,20);
INSERT INTO tbl_link_arteries VALUES(21,71,20);
INSERT INTO tbl_link_arteries VALUES(22,72,20);
INSERT INTO tbl_link_arteries VALUES(23,73,21);
INSERT INTO tbl_link_arteries VALUES(24,74,24);
INSERT INTO tbl_link_arteries VALUES(25,75,23);
INSERT INTO tbl_link_arteries VALUES(26,76,23);
INSERT INTO tbl_link_arteries VALUES(27,77,25);
INSERT INTO tbl_link_arteries VALUES(28,78,26);
INSERT INTO tbl_link_arteries VALUES(29,80,29);
INSERT INTO tbl_link_arteries VALUES(30,83,28);
INSERT INTO tbl_link_arteries VALUES(31,84,35);
INSERT INTO tbl_link_arteries VALUES(32,85,35);
INSERT INTO tbl_link_arteries VALUES(33,86,35);
INSERT INTO tbl_link_arteries VALUES(34,87,21);
INSERT INTO tbl_link_arteries VALUES(35,88,22);
INSERT INTO tbl_link_arteries VALUES(36,89,22);
INSERT INTO tbl_link_arteries VALUES(37,98,37);
INSERT INTO tbl_link_arteries VALUES(38,99,37);
INSERT INTO tbl_link_arteries VALUES(39,100,37);
INSERT INTO tbl_link_arteries VALUES(40,101,37);
INSERT INTO tbl_link_arteries VALUES(41,102,38);
INSERT INTO tbl_link_arteries VALUES(42,103,38);
INSERT INTO tbl_link_arteries VALUES(43,104,28);
INSERT INTO tbl_link_arteries VALUES(44,105,28);
INSERT INTO tbl_link_arteries VALUES(45,106,28);
INSERT INTO tbl_link_arteries VALUES(46,107,28);
INSERT INTO tbl_link_arteries VALUES(47,111,52);
INSERT INTO tbl_link_arteries VALUES(48,111,49);
INSERT INTO tbl_link_arteries VALUES(49,171,52);
INSERT INTO tbl_link_arteries VALUES(50,114,44);
INSERT INTO tbl_link_arteries VALUES(51,114,45);
INSERT INTO tbl_link_arteries VALUES(52,115,44);
INSERT INTO tbl_link_arteries VALUES(53,116,44);
INSERT INTO tbl_link_arteries VALUES(54,117,44);
INSERT INTO tbl_link_arteries VALUES(55,117,48);
INSERT INTO tbl_link_arteries VALUES(56,118,44);
INSERT INTO tbl_link_arteries VALUES(57,118,45);
INSERT INTO tbl_link_arteries VALUES(58,118,42);
INSERT INTO tbl_link_arteries VALUES(59,118,41);
INSERT INTO tbl_link_arteries VALUES(60,114,50);
INSERT INTO tbl_link_arteries VALUES(61,119,45);
INSERT INTO tbl_link_arteries VALUES(62,123,43);
INSERT INTO tbl_link_arteries VALUES(63,120,45);
INSERT INTO tbl_link_arteries VALUES(64,123,49);
INSERT INTO tbl_link_arteries VALUES(65,121,45);
INSERT INTO tbl_link_arteries VALUES(66,122,49);
INSERT INTO tbl_link_arteries VALUES(67,122,45);
INSERT INTO tbl_link_arteries VALUES(68,122,50);
INSERT INTO tbl_link_arteries VALUES(69,124,48);
INSERT INTO tbl_link_arteries VALUES(70,125,47);
INSERT INTO tbl_link_arteries VALUES(71,125,12);
INSERT INTO tbl_link_arteries VALUES(72,126,48);
INSERT INTO tbl_link_arteries VALUES(73,127,48);
INSERT INTO tbl_link_arteries VALUES(74,128,63);
INSERT INTO tbl_link_arteries VALUES(75,128,48);
INSERT INTO tbl_link_arteries VALUES(76,128,64);
INSERT INTO tbl_link_arteries VALUES(77,128,47);
INSERT INTO tbl_link_arteries VALUES(80,112,66);
INSERT INTO tbl_link_arteries VALUES(81,112,65);
INSERT INTO tbl_link_arteries VALUES(82,112,51);
INSERT INTO tbl_link_arteries VALUES(83,113,51);
INSERT INTO tbl_link_arteries VALUES(84,113,65);
INSERT INTO tbl_link_arteries VALUES(85,129,49);
INSERT INTO tbl_link_arteries VALUES(86,129,43);
INSERT INTO tbl_link_arteries VALUES(87,130,43);
INSERT INTO tbl_link_arteries VALUES(88,130,49);
INSERT INTO tbl_link_arteries VALUES(89,131,49);
INSERT INTO tbl_link_arteries VALUES(90,131,43);
INSERT INTO tbl_link_arteries VALUES(91,132,45);
INSERT INTO tbl_link_arteries VALUES(92,132,50);
INSERT INTO tbl_link_arteries VALUES(93,132,11);
INSERT INTO tbl_link_arteries VALUES(94,132,49);
INSERT INTO tbl_link_arteries VALUES(95,132,43);
INSERT INTO tbl_link_arteries VALUES(96,133,47);
INSERT INTO tbl_link_arteries VALUES(97,133,49);
INSERT INTO tbl_link_arteries VALUES(98,133,43);
INSERT INTO tbl_link_arteries VALUES(99,134,50);
INSERT INTO tbl_link_arteries VALUES(100,134,45);
INSERT INTO tbl_link_arteries VALUES(101,134,11);
INSERT INTO tbl_link_arteries VALUES(102,135,50);
INSERT INTO tbl_link_arteries VALUES(103,135,45);
INSERT INTO tbl_link_arteries VALUES(104,135,11);
INSERT INTO tbl_link_arteries VALUES(105,136,50);
INSERT INTO tbl_link_arteries VALUES(106,136,45);
INSERT INTO tbl_link_arteries VALUES(107,136,11);
INSERT INTO tbl_link_arteries VALUES(108,137,50);
INSERT INTO tbl_link_arteries VALUES(109,137,45);
INSERT INTO tbl_link_arteries VALUES(110,137,11);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('tbl_arteries',66);
INSERT INTO sqlite_sequence VALUES('tbl_musclegroups',192);
INSERT INTO sqlite_sequence VALUES('tbl_nerves',42);
INSERT INTO sqlite_sequence VALUES('tbl_veins',7);
INSERT INTO sqlite_sequence VALUES('tbl_muscles',176);
INSERT INTO sqlite_sequence VALUES('tbl_link_arteries',110);
INSERT INTO sqlite_sequence VALUES('tbl_nerves',42);
INSERT INTO sqlite_sequence VALUES('tbl_arteries',38);
CREATE VIEW view_arteries AS SELECT * FROM 
(
WITH RECURSIVE tbl (
    id,
    name,
    parent_id,
    grouplevel,
    bottomgroupid
)
AS (
    SELECT bottomgroup.id,
           bottomgroup.name,
           bottomgroup.parent_id,
           0,
           bottomgroup.id
      FROM tbl_arteries bottomgroup
    UNION
    SELECT art.id,
           art.name,
           art.parent_id,
           tbl.grouplevel - 1,
           tbl.bottomgroupid
      FROM tbl_arteries art
           INNER JOIN
           tbl ON art.id = tbl.parent_id
)
SELECT *
  FROM tbl
 ORDER BY grouplevel) as grouptree;
CREATE VIEW view_grouptree AS SELECT * FROM 
(
WITH RECURSIVE tbl (
    id,
    name,
    lat_name,
    parent_id,
    grouplevel,
    bottomgroupid
)
AS (
    SELECT bottomgroup.id,
           bottomgroup.name,
           bottomgroup.lat_name,
           bottomgroup.parent_id,
           0,
           bottomgroup.id
      FROM tbl_musclegroups bottomgroup
    UNION
    SELECT mc.id,
           mc.name,
           mc.lat_name,
           mc.parent_id,
           tbl.grouplevel - 1,
           tbl.bottomgroupid
      FROM tbl_musclegroups mc
           INNER JOIN
           tbl ON mc.id = tbl.parent_id
)
SELECT *
  FROM tbl
 ORDER BY grouplevel) as grouptree;
CREATE VIEW view_grouptree_topdown AS SELECT * FROM 
(
WITH RECURSIVE tbl (
    id,
    name,
    lat_name,
    parent_id,
    grouplevel,
    topgroupid
)
AS (
    SELECT topgroup.id,
           topgroup.name,
           topgroup.lat_name,
           topgroup.parent_id,
           0,
           topgroup.id
      FROM tbl_musclegroups topgroup
    UNION
    SELECT mc.id,
           mc.name,
           mc.lat_name,
           mc.parent_id,
           tbl.grouplevel - 1,
           tbl.topgroupid
      FROM tbl_musclegroups mc
           INNER JOIN
           tbl ON mc.parent_id = tbl.id
)
SELECT *
  FROM tbl
 ORDER BY grouplevel) as grouptree;
PRAGMA writable_schema=OFF;
COMMIT;
