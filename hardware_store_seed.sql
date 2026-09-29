-- Hardware store starter catalog: 8 categories, 56 products.
-- Safe to run more than once: category names and product SKUs are unique.

INSERT INTO categories (name, description)
VALUES
  ('Hand Tools', 'Everyday manual tools for repair and construction'),
  ('Power Tools', 'Corded and cordless electric tools'),
  ('Fasteners', 'Screws, nails, bolts, nuts and anchors'),
  ('Electrical', 'Electrical cables, switches and accessories'),
  ('Plumbing', 'Pipes, fittings, valves and plumbing accessories'),
  ('Paint & Adhesives', 'Paint, brushes, sealants and adhesives'),
  ('Safety Equipment', 'Personal protective equipment and safety supplies'),
  ('Building Materials', 'Basic construction and masonry materials')
ON CONFLICT (name) DO NOTHING;

INSERT INTO products
  (name, sku, barcode, price, cost, stock, min_stock, category, description, taxable, active, unit, track_inventory)
VALUES
  ('Claw Hammer 16 oz', 'HT-001', '890100000001', 1850, 1250, 35, 8, 'Hand Tools', 'Fiberglass handle claw hammer', true, true, 'piece', true),
  ('Ball Pein Hammer 16 oz', 'HT-002', '890100000002', 2100, 1450, 24, 6, 'Hand Tools', 'Steel ball pein hammer for metalwork', true, true, 'piece', true),
  ('Adjustable Wrench 10 inch', 'HT-003', '890100000003', 1650, 1050, 30, 8, 'Hand Tools', 'Chrome-plated adjustable spanner', true, true, 'piece', true),
  ('Combination Spanner Set 8 pc', 'HT-004', '890100000004', 3200, 2200, 18, 5, 'Hand Tools', 'Metric combination spanner set', true, true, 'set', true),
  ('Screwdriver Set 6 pc', 'HT-005', '890100000005', 1450, 900, 40, 10, 'Hand Tools', 'Phillips and flat-head drivers', true, true, 'set', true),
  ('Long Nose Pliers 8 inch', 'HT-006', '890100000006', 1250, 780, 32, 8, 'Hand Tools', 'Insulated long nose pliers', true, true, 'piece', true),
  ('Measuring Tape 5 m', 'HT-007', '890100000007', 850, 500, 50, 12, 'Hand Tools', 'Locking steel tape measure', true, true, 'piece', true),

  ('Cordless Drill 18V', 'PT-001', '890100000008', 14500, 10500, 10, 3, 'Power Tools', '18V drill with battery and charger', true, true, 'piece', true),
  ('Angle Grinder 4 inch', 'PT-002', '890100000009', 7200, 5200, 14, 3, 'Power Tools', '900W angle grinder', true, true, 'piece', true),
  ('Circular Saw 7 inch', 'PT-003', '890100000010', 12800, 9300, 8, 2, 'Power Tools', '1200W circular saw', true, true, 'piece', true),
  ('Jigsaw 650W', 'PT-004', '890100000011', 8500, 6100, 9, 2, 'Power Tools', 'Variable-speed electric jigsaw', true, true, 'piece', true),
  ('Heat Gun 2000W', 'PT-005', '890100000012', 3900, 2700, 16, 4, 'Power Tools', 'Two-speed hot air gun', true, true, 'piece', true),
  ('Rotary Hammer 26mm', 'PT-006', '890100000013', 16800, 12500, 6, 2, 'Power Tools', 'Heavy-duty rotary hammer drill', true, true, 'piece', true),
  ('Extension Cable 20 m', 'PT-007', '890100000014', 3200, 2200, 20, 5, 'Power Tools', 'Heavy-duty outdoor extension cable', true, true, 'piece', true),

  ('Wood Screw 1 inch Pack', 'FA-001', '890100000015', 450, 280, 80, 20, 'Fasteners', '200-piece zinc wood screw pack', true, true, 'pack', true),
  ('Wood Screw 2 inch Pack', 'FA-002', '890100000016', 650, 420, 75, 20, 'Fasteners', '150-piece zinc wood screw pack', true, true, 'pack', true),
  ('Self Tapping Screw Pack', 'FA-003', '890100000017', 750, 480, 60, 15, 'Fasteners', 'Assorted self-tapping screws', true, true, 'pack', true),
  ('Concrete Nail 2 inch', 'FA-004', '890100000018', 380, 230, 90, 25, 'Fasteners', '100-piece hardened concrete nails', true, true, 'box', true),
  ('M8 Bolt Nut Washer Set', 'FA-005', '890100000019', 950, 620, 45, 10, 'Fasteners', 'Assorted galvanized bolt set', true, true, 'box', true),
  ('Wall Plug 8mm Pack', 'FA-006', '890100000020', 350, 210, 100, 25, 'Fasteners', '100-piece nylon wall plugs', true, true, 'pack', true),
  ('Cable Tie 200mm Pack', 'FA-007', '890100000021', 300, 180, 70, 15, 'Fasteners', '100-piece black cable ties', true, true, 'pack', true),

  ('PVC Electrical Cable 1.5mm 90m', 'EL-001', '890100000022', 9800, 7600, 12, 3, 'Electrical', 'Single-core copper cable roll', true, true, 'roll', true),
  ('PVC Electrical Cable 2.5mm 90m', 'EL-002', '890100000023', 14500, 11200, 10, 3, 'Electrical', 'Heavy-duty copper cable roll', true, true, 'roll', true),
  ('LED Bulb 12W', 'EL-003', '890100000024', 550, 320, 100, 25, 'Electrical', 'Cool white LED bulb', true, true, 'piece', true),
  ('LED Bulb 20W', 'EL-004', '890100000025', 850, 520, 80, 20, 'Electrical', 'Bright daylight LED bulb', true, true, 'piece', true),
  ('13A Plug Top', 'EL-005', '890100000026', 380, 220, 65, 15, 'Electrical', 'Fused three-pin plug top', true, true, 'piece', true),
  ('1 Gang Light Switch', 'EL-006', '890100000027', 420, 250, 55, 15, 'Electrical', 'White wall light switch', true, true, 'piece', true),
  ('Double Socket Outlet', 'EL-007', '890100000028', 950, 620, 40, 10, 'Electrical', 'Twin 13A switched socket', true, true, 'piece', true),

  ('PVC Pipe 1/2 inch 3m', 'PL-001', '890100000029', 650, 420, 45, 10, 'Plumbing', 'Half-inch PVC water pipe', true, true, 'piece', true),
  ('PVC Pipe 1 inch 3m', 'PL-002', '890100000030', 1100, 720, 35, 8, 'Plumbing', 'One-inch PVC water pipe', true, true, 'piece', true),
  ('PVC Elbow 1/2 inch', 'PL-003', '890100000031', 120, 65, 120, 30, 'Plumbing', 'Half-inch 90 degree elbow', true, true, 'piece', true),
  ('PVC Tee 1/2 inch', 'PL-004', '890100000032', 150, 80, 100, 25, 'Plumbing', 'Half-inch PVC tee fitting', true, true, 'piece', true),
  ('Brass Ball Valve 1/2 inch', 'PL-005', '890100000033', 850, 540, 35, 8, 'Plumbing', 'Quarter-turn brass shutoff valve', true, true, 'piece', true),
  ('PTFE Thread Seal Tape', 'PL-006', '890100000034', 180, 95, 150, 35, 'Plumbing', 'Thread sealing tape roll', true, true, 'piece', true),
  ('Flexible Water Hose 1m', 'PL-007', '890100000035', 650, 400, 40, 10, 'Plumbing', 'Braided flexible connector hose', true, true, 'piece', true),

  ('Interior Wall Paint 4L White', 'PA-001', '890100000036', 4200, 3000, 18, 5, 'Paint & Adhesives', 'Washable interior emulsion paint', true, true, 'tin', true),
  ('Exterior Wall Paint 4L White', 'PA-002', '890100000037', 4800, 3500, 15, 4, 'Paint & Adhesives', 'Weather-resistant exterior paint', true, true, 'tin', true),
  ('Paint Brush 2 inch', 'PA-003', '890100000038', 350, 190, 70, 15, 'Paint & Adhesives', 'Natural bristle paint brush', true, true, 'piece', true),
  ('Paint Roller 9 inch', 'PA-004', '890100000039', 850, 500, 45, 10, 'Paint & Adhesives', 'Medium nap roller with handle', true, true, 'piece', true),
  ('Acrylic Silicone Sealant', 'PA-005', '890100000040', 650, 400, 55, 12, 'Paint & Adhesives', 'Clear waterproof sealant cartridge', true, true, 'piece', true),
  ('Contact Adhesive 500ml', 'PA-006', '890100000041', 1250, 800, 30, 8, 'Paint & Adhesives', 'High-strength multipurpose adhesive', true, true, 'bottle', true),
  ('Masking Tape 2 inch', 'PA-007', '890100000042', 280, 150, 90, 20, 'Paint & Adhesives', 'Low-tack painters masking tape', true, true, 'roll', true),

  ('Safety Helmet', 'SE-001', '890100000043', 750, 420, 35, 8, 'Safety Equipment', 'Adjustable industrial safety helmet', true, true, 'piece', true),
  ('Nitrile Work Gloves Pair', 'SE-002', '890100000044', 450, 250, 80, 20, 'Safety Equipment', 'Cut-resistant coated work gloves', true, true, 'pair', true),
  ('Safety Goggles', 'SE-003', '890100000045', 600, 350, 45, 10, 'Safety Equipment', 'Clear impact-resistant goggles', true, true, 'piece', true),
  ('Dust Mask Pack', 'SE-004', '890100000046', 500, 280, 100, 25, 'Safety Equipment', 'Pack of 10 protective dust masks', true, true, 'pack', true),
  ('Reflective Safety Vest', 'SE-005', '890100000047', 900, 560, 25, 6, 'Safety Equipment', 'High-visibility reflective vest', true, true, 'piece', true),
  ('Ear Protection Muffs', 'SE-006', '890100000048', 1100, 700, 20, 5, 'Safety Equipment', 'Adjustable noise-reduction earmuffs', true, true, 'piece', true),
  ('Steel Toe Safety Boots', 'SE-007', '890100000049', 4200, 3000, 14, 4, 'Safety Equipment', 'Steel-toe protective work boots', true, true, 'pair', true),

  ('Portland Cement 50kg', 'BM-001', '890100000050', 1850, 1500, 60, 15, 'Building Materials', 'General-purpose Portland cement', true, true, 'bag', true),
  ('River Sand 25kg', 'BM-002', '890100000051', 550, 380, 80, 20, 'Building Materials', 'Washed construction sand', true, true, 'bag', true),
  ('Plaster of Paris 5kg', 'BM-003', '890100000052', 650, 420, 45, 10, 'Building Materials', 'Fine finishing plaster', true, true, 'bag', true),
  ('Red Clay Brick', 'BM-004', '890100000053', 45, 28, 500, 100, 'Building Materials', 'Standard red clay brick', true, true, 'piece', true),
  ('Concrete Block 4 inch', 'BM-005', '890100000054', 120, 75, 300, 60, 'Building Materials', 'Lightweight concrete block', true, true, 'piece', true),
  ('Ceramic Tile Adhesive 20kg', 'BM-006', '890100000055', 1450, 980, 25, 6, 'Building Materials', 'Powder tile fixing adhesive', true, true, 'bag', true),
  ('Waterproofing Compound 1L', 'BM-007', '890100000056', 950, 620, 30, 8, 'Building Materials', 'Liquid cement waterproofing additive', true, true, 'bottle', true)
ON CONFLICT (sku) DO NOTHING;
